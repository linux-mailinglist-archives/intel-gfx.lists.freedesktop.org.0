Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA8A8C4862
	for <lists+intel-gfx@lfdr.de>; Mon, 13 May 2024 22:43:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 36DD010E972;
	Mon, 13 May 2024 20:43:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CsGpgFBP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3352810E972
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 May 2024 20:43:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715633037; x=1747169037;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=8eWB4cnPawxMX7mmW1KCu97LpQSafV4S8EyQeFPwFMk=;
 b=CsGpgFBPZCKWnBf2wc58kk3Y3eeLx/vEJ9ihePO/Sakt+tiSizXniTxb
 pxPYKB3rCDKoQ/irt+w5NRj2XBcle9BweTU4/6pFfzC/8sUPjAwdC2wBN
 6A7tz460uZWb+gaviLOPBpVDm2XS7AqyViJbUkYy5795qrgyY9TU7kg43
 4bKxXxGVOktOuyVfdfh/G3TQnj5q4V41wrC0XudrW7HeuOYZNUbo3uwrF
 XyGqugJMIZJiwvRhz7zH3nt1PPySWmf9jbPmwChWQaICxxMHTB0n1/AW7
 UlPQyNF+3mDP9B5yBIBo5sRozhcLF859vtlqMakKD6xhrxqO1LkX62kbF g==;
X-CSE-ConnectionGUID: c6ZX3MniS4e+y3t/fUPfRA==
X-CSE-MsgGUID: zFlhbzbmRKmLLQsJwNJz+w==
X-IronPort-AV: E=McAfee;i="6600,9927,11072"; a="22165895"
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="22165895"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:43:56 -0700
X-CSE-ConnectionGUID: +kV2UDOSRhCEKicPJW57iQ==
X-CSE-MsgGUID: ZqslzvVHQTSeit5XODm8xg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,159,1712646000"; d="scan'208";a="35338010"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.52])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 13:43:54 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH v2 13/16] drm/i915: Refactor skl+ plane register offset
 calculations
In-Reply-To: <87cyppe96j.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240510152329.24098-14-ville.syrjala@linux.intel.com>
 <20240513170040.15393-1-ville.syrjala@linux.intel.com>
 <87cyppe96j.fsf@intel.com>
Date: Mon, 13 May 2024 23:43:51 +0300
Message-ID: <877cfxe92w.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 13 May 2024, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Mon, 13 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> Currentluy every skl+ plane register defines some intermediate

*Currently

>> macros to calculate the final register offset. Pull all of that
>> into common macros, simplifying the final register offset stuff
>> into just five defines:
>> - raw register offsets for the planes 1 and 2 on pipes A and B
>> - the final parametrized macro
>>
>> v2: Rebase
>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Nice cleanup,
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

--=20
Jani Nikula, Intel
