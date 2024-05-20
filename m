Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F358CA0C4
	for <lists+intel-gfx@lfdr.de>; Mon, 20 May 2024 18:34:12 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0208610E2C2;
	Mon, 20 May 2024 16:34:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GmgtmRgo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BB89710E2C2
 for <intel-gfx@lists.freedesktop.org>; Mon, 20 May 2024 16:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716222849; x=1747758849;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=hurwADxMqOZ4pGn+7POucIyNr3HgCzFTUEPMwTuFLOQ=;
 b=GmgtmRgoXOe7Xfr0whxG7wdedbVgMVI0DBytwBUSb6o71NeNo5/55o/d
 1JMnO3o1raotzHpJfdr/PlfGYmA6U4HqTziwEgWe/O9Tujp+w2bVakg/v
 EwZBGcDiT49RMptpqqUbBHVKIIt7pJ2gG9T0c6l7fHpTt5cYJcU4F5Oef
 4Y0p9sOnCS5HS54iTTKF+q2QO3BytM6jkivJK5zm7kEZSrbF3nhdrI/7r
 h1yGuGsji+JNJ9CBoxKlv3ZZFFCJK7mLE3VBJuVfwZOBjHuJB5g7gMCNC
 vn4ZTetrZyqTwg8pXJsY67qe3nel1PvwS3I/ykRUMCldqEJEm7UGwV5A1 w==;
X-CSE-ConnectionGUID: bOzyve6nTXemx8R41BLlNw==
X-CSE-MsgGUID: W70rvLioScqihXCVAJ5/yQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11078"; a="16193560"
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="16193560"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 09:34:08 -0700
X-CSE-ConnectionGUID: WS8mFVF8Rk2C4OI2YyhJQA==
X-CSE-MsgGUID: BzhUMw/5QBmYIZ78n2a2yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,175,1712646000"; d="scan'208";a="33190336"
Received: from unknown (HELO localhost) ([10.245.246.99])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2024 09:34:06 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 02/13] drm/i915: Clean up the cursor register defines
In-Reply-To: <Zkt5EhreisBepuTS@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240516135622.3498-1-ville.syrjala@linux.intel.com>
 <20240516135622.3498-3-ville.syrjala@linux.intel.com>
 <878r04voft.fsf@intel.com> <Zkt5EhreisBepuTS@intel.com>
Date: Mon, 20 May 2024 19:34:03 +0300
Message-ID: <8734qcsaro.fsf@intel.com>
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

On Mon, 20 May 2024, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Mon, May 20, 2024 at 12:10:30PM +0300, Jani Nikula wrote:
>> On Thu, 16 May 2024, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> I also think it's kind of unnecessary when they're only
>> passed on as parameters. Or is there some corner case where it matters?
>
> I think cargo-culting is probably the best argument for protecting
> each and every macro argument. If used universally then I think
> it'll be a bit more likely that newly added macros, where it
> might matter more, will inherit it as well.

That's a good point.

BR,
Jani.


--=20
Jani Nikula, Intel
