Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 233F86B6098
	for <lists+intel-gfx@lfdr.de>; Sat, 11 Mar 2023 21:46:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0E19610E1D4;
	Sat, 11 Mar 2023 20:46:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 431F810E090;
 Sat, 11 Mar 2023 20:46:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678567567; x=1710103567;
 h=date:message-id:from:to:cc:subject:in-reply-to:
 references:mime-version;
 bh=/iB7Aljs+xvez8AVDiZY8ibe3Mz0r5XOBXYI4c99VjQ=;
 b=AwVCoFw8IKGz/TdWjF84q71dMFKYuKCsr5jcUsCZ7vI2BSMtBrarL9od
 8obLHk0piPf27cdXrqYXsJ0/1wUv+wTO3MgaxaXmLQRhXpIeI2RQ+ahAL
 3dtUFVzlVsMmpiJ4JXG/80GMVyy0r3ekyNZjmFQP4Hub7rbA0cV/GI9RZ
 nUu7/qSYkKsQMhq1tuiaG7G3rmgDpbL3bsAdtyZroJNprlviF69crHCZt
 kD6q1DS7mufRUOOHrXLuSO43dDRMeh4W0tY7PyVm1c3I2KYtmDTEluuSM
 0tLeBfDnH6JuyCqP7YWqAmoVmicA5VuhpOIBAM3m2gSE+w+jylYG+iYLH A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10646"; a="336960745"
X-IronPort-AV: E=Sophos;i="5.98,253,1673942400"; d="scan'208";a="336960745"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2023 12:46:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10646"; a="788439140"
X-IronPort-AV: E=Sophos;i="5.98,253,1673942400"; d="scan'208";a="788439140"
Received: from ammowson-mobl.amr.corp.intel.com (HELO adixit-arch.intel.com)
 ([10.212.157.57])
 by fmsmga002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2023 12:46:06 -0800
Date: Sat, 11 Mar 2023 12:46:05 -0800
Message-ID: <87v8j7kodu.wl-ashutosh.dixit@intel.com>
From: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
To: intel-gfx@lists.freedesktop.org
In-Reply-To: <20230311003358.1660191-1-ashutosh.dixit@intel.com>
References: <20230311003358.1660191-1-ashutosh.dixit@intel.com>
User-Agent: Wanderlust/2.15.9 (Almost Unreal) SEMI-EPG/1.14.7 (Harue)
 FLIM-LB/1.14.9 (=?ISO-8859-4?Q?Goj=F2?=) APEL-LB/10.8 EasyPG/1.0.0
 Emacs/28.2 (x86_64-pc-linux-gnu) MULE/6.0 (HANACHIRUSATO)
MIME-Version: 1.0 (generated by SEMI-EPG 1.14.7 - "Harue")
Content-Type: text/plain; charset=US-ASCII
Subject: Re: [Intel-gfx] [PATCH] drm/i915/guc: Disable PL1 power limit when
 loading GuC firmware
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
Cc: dri-devel@lists.freedesktop.org, Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, 10 Mar 2023 16:33:58 -0800, Ashutosh Dixit wrote:
>
> On dGfx, the PL1 power limit being enabled and set to a low value results
> in a low GPU operating freq. It also negates the freq raise operation which
> is done before GuC firmware load. As a result GuC firmware load can time
> out. Such timeouts were seen in the GL #8062 bug below (where the PL1 power
> limit was enabled and set to a low value). Therefore disable the PL1 power
> limit when possible when loading GuC firmware.

There are a couple of bugs in the patch. Please don't review yet, will post
a v2. Thanks.
