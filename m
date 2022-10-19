Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB26604721
	for <lists+intel-gfx@lfdr.de>; Wed, 19 Oct 2022 15:31:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8848110F244;
	Wed, 19 Oct 2022 13:31:10 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9E98910E437
 for <Intel-gfx@lists.freedesktop.org>; Wed, 19 Oct 2022 13:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666186265; x=1697722265;
 h=message-id:date:mime-version:to:cc:from:subject:
 content-transfer-encoding;
 bh=4wtOeT8RZIX6dw14IAJ0yPqq/FxpKzeHezEAY45EG/I=;
 b=ZYAAfZd9exoe9xOZxC6nW/4+xDmgyE11EflLf8F+jflJwpX0VyxWmSwa
 vWrleFeCsm2n+wZLyggsnLiTENE+A7Z6w4pprceHuLiKXFcX9yaCTlIi7
 ZrlqB5X+816TFvJE00DqVAv+M3AyfUmcbgVVynY5qAHLHyDqri5uP23ut
 cW86/TJw+yQnGsfcVh5Gdyc5bAjrl6J9rjqCIH0teQasPhja/URndZ/12
 2u5bjUzrD7hThG5WO4EZgYwpx0JJtmp9ZHwKG7225PAZ3P4WbR8VkDowq
 ugCFEc+FxauQMTbJE/5FBD+tjFbihhmZMUHm8Aa4f7p/UTbIOVy7bCXDK Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="286126253"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="286126253"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 06:31:04 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10505"; a="660348012"
X-IronPort-AV: E=Sophos;i="5.95,196,1661842800"; d="scan'208";a="660348012"
Received: from mjmcener-mobl1.amr.corp.intel.com (HELO [10.213.233.40])
 ([10.213.233.40])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Oct 2022 06:31:03 -0700
Message-ID: <0029af41-bf24-9972-10ac-f52e1bdcbf08@linux.intel.com>
Date: Wed, 19 Oct 2022 14:31:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Content-Language: en-US
To: "Jason A. Donenfeld" <Jason@zx2c4.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] signal: break out of wait loops on kthread_stop()
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Cc: "Intel-gfx@lists.freedesktop.org" <Intel-gfx@lists.freedesktop.org>,
 linux-kernel@vger.kernel.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


Hi,

A question regarding a7c01fa93aeb ("signal: break out of wait loops on 
kthread_stop()") if I may.

We have a bunch code in i915, possibly limited to self tests (ie debug 
builds) but still important for our flows, which spawn kernel threads 
and exercises parts of the driver.

Problem we are hitting with this patch is that code did not really need 
to be signal aware until now. Well to say that more accurately - we were 
able to test the code which is normally executed from userspace, so is 
signal aware, but not worry about -ERESTARTSYS or -EINTR within the test 
cases itself.

For example threads which exercise an internal API for a while until the 
parent calls kthread_stop. Now those tests can hit unexpected errors.

Question is how to best approach working around this change. It is of 
course technically possible to rework our code in more than one way, 
although with some cost and impact already felt due reduced pass rates 
in our automated test suites.

Maybe an opt out kthread flag from this new behavior? Would that be 
acceptable as a quick fix? Or any other comments?

Regards,

Tvrtko
