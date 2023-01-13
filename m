Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F6D26695E5
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Jan 2023 12:51:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EBDF10E9F2;
	Fri, 13 Jan 2023 11:51:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FC1F10E9F2;
 Fri, 13 Jan 2023 11:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673610697; x=1705146697;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=64ECiS66y3wJjL5N+hVdrGwZP/w6DA/+8BoGHQWnsNY=;
 b=a9FwTGfuJCPzzP4z2WSgB3JbFHt2PKA9iOAQBrGRFf3y8VqJm6jt4Bgo
 9p8auR/D0i5REM/pMRsxp7U1r3wJ7F3zdsijHx+pOixa9VBADYXM8H5uy
 H7qGcBInzBN++YMiNsQD8z6Nxo+Rbfd7gr0vBUes/Hc1GaQFh69s2XuyV
 hzDgoaRC9cS5TOu9zrhoY7llEuVkFWB2F06dyX9jkbvPPSFHPuTyjxMFH
 Zn8IwXMXCmgj1wr+IMdYzgLJqnCaUWQJmv7xAgXzmVYA4lHRh3y9rPYNH
 CyCDCrWXTwKXh7QgbDPcFXnk3rf6so7ZaOPLlvH3hkLZgqQ1UcmxfGjrL Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="388473731"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="388473731"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 03:51:36 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10588"; a="721504322"
X-IronPort-AV: E=Sophos;i="5.97,213,1669104000"; d="scan'208";a="721504322"
Received: from andreasg-mobl2.ger.corp.intel.com (HELO [10.252.13.101])
 ([10.252.13.101])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 03:51:34 -0800
Message-ID: <f691df00-a1b3-a6e1-3ed8-cdb4eb7a5a56@intel.com>
Date: Fri, 13 Jan 2023 11:51:33 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Firefox/102.0 Thunderbird/102.6.0
Content-Language: en-GB
To: Nirmoy Das <nirmoy.das@intel.com>, intel-gfx@lists.freedesktop.org
References: <20230113114903.7824-1-nirmoy.das@intel.com>
From: Matthew Auld <matthew.auld@intel.com>
In-Reply-To: <20230113114903.7824-1-nirmoy.das@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/selftests: Unwind hugepages to
 drop wakeref on error
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
Cc: chris.p.wilson@linux.intel.com, dri-devel@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On 13/01/2023 11:49, Nirmoy Das wrote:
> From: Chris Wilson <chris.p.wilson@linux.intel.com>
> 
> Make sure that upon error after we have acquired the wakeref we do
> release it again.
> 
> Signed-off-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
Reviewed-by: Matthew Auld <matthew.auld@intel.com>
