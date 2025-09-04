Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED87B43A03
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Sep 2025 13:26:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BC3F410E9FB;
	Thu,  4 Sep 2025 11:26:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Rtt+9D2F";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2CDC10E9BD;
 Thu,  4 Sep 2025 11:26:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1756985215; x=1788521215;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=lko9DjtPkR5Rmvg4oFapl/YcLraNe3xvrZ5M8mwcvtI=;
 b=Rtt+9D2FNydy5x3lqRAbstNfnyhhPzdBq17qwLweueyh28w34MV00QvF
 0y84kgEHgdl1Pfaau4BD3T2yRAE+oBgM0KnM8dZ2tsc56gGT86RCyThcZ
 214GdUatAwXfUquWM6xYoEW0ej3rgpt/n1tvOR2crEmkMVnAjOXwJp6xf
 XBECWHYGpqIBp3sU+rk4F731w0PjrHOBFxTOceymWKQ3M9VQGlblR/kdT
 /R7Rvs8M0AQThRo6cAzhHzIhC0jUagl0aZblMnrNS334uUxgAnUnHCCTE
 ZM9x+20ZaBGaSFYnlt48Le+MU644dhCIqIrYMJaEb4pJ+gZ+jkmzoFqU8 A==;
X-CSE-ConnectionGUID: Kovp68AmRkOx6hAEK16I+w==
X-CSE-MsgGUID: KKZE/eq0QdGhbxrcMNRKng==
X-IronPort-AV: E=McAfee;i="6800,10657,11542"; a="76769901"
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="76769901"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 04:26:54 -0700
X-CSE-ConnectionGUID: QjtXqxOdTdqlWZEOEqdEow==
X-CSE-MsgGUID: i0Da72AFRy2Ouex5IbCGdA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,238,1751266800"; d="scan'208";a="176204769"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.79])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Sep 2025 04:26:52 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Cc: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Kandpal, 
 Suraj" <suraj.kandpal@intel.com>
Subject: Re: [PATCH 01/20] drm/i915/hdmi: use generic poll_timeout_us()
 instead of __wait_for()
In-Reply-To: <ccdc9ebcff65a1a46305fb014ec78a35ee4c5b7f.camel@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1756383233.git.jani.nikula@intel.com>
 <fc3a67f9de0049f415a276bba1c11a4df97e01d6.1756383233.git.jani.nikula@intel.com>
 <ccdc9ebcff65a1a46305fb014ec78a35ee4c5b7f.camel@intel.com>
Date: Thu, 04 Sep 2025 14:26:49 +0300
Message-ID: <bf70d39d8626ef5a428e237ee6bcc6dd5accff52@intel.com>
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

On Wed, 03 Sep 2025, "Hogander, Jouni" <jouni.hogander@intel.com> wrote:
> On Thu, 2025-08-28 at 15:20 +0300, Jani Nikula wrote:
>> Prefer generic poll helpers over i915 custom helpers.
>>=20
>> The functional change is losing the exponentially growing sleep of
>> __wait_for(), which used to be 1, 2, 4, and 8 ms in this particular
>> case.
>>=20
>> Use an arbitrary constant 4 ms sleep instead. The timeout remains,
>> varying between 20 ms and 3000 ms.
>>=20
>> Cc: Suraj Kandpal <suraj.kandpal@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>
> Reviewed-by: Jouni H=C3=B6gander <jouni.hogander@intel.com>

Thanks a lot for the review, series pushed to din.

BR,
Jani.

--=20
Jani Nikula, Intel
