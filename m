Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2325A609E6A
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Oct 2022 12:01:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 16FC310E070;
	Mon, 24 Oct 2022 10:01:08 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4A1DC10E30A
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Oct 2022 10:01:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1666605664; x=1698141664;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=42JQIKDj4DclsyHOhIOZyFQWEvr9dZii77bGBSGvfME=;
 b=KuLqar9egv67jq+WPGjX3dMGfZcsNlw1OSs9DkU/wCdf5oAyv/57wg/N
 OXwKU3V7dYcHQkX8vPjTxcYP7KUiXaVQAygiBDIV2zgPrF4x8GyXsLO9Z
 VcTL/AeGDkNYKfu/KJoRrZx2oSmkkcAj6uGzaSSCmLV7c7pXE+MXDtdht
 m3di9FVbLM2jkQvoJmrSQyh6Fr+5q5RgpNBiNOlCVqpd80KN9xy5OwQXO
 tniAzqaLRvBQueWBS9wchobL12/kdTlN0vR3wr1P1MoUaj/mizAqTMb1t
 UmMsSl6gOaXMokXTnA1eo+IJqlQ1YpYgCXpghoowG+E0UkStEeN4PQk0K Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="333964985"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="333964985"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 03:01:03 -0700
X-IronPort-AV: E=McAfee;i="6500,9779,10509"; a="773764591"
X-IronPort-AV: E=Sophos;i="5.95,209,1661842800"; d="scan'208";a="773764591"
Received: from emontau-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.252.52.221])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2022 03:01:00 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
In-Reply-To: <Y1Zd/jljNIYP6Qx9@ashyti-mobl2.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221019143818.244339-1-andrzej.hajda@intel.com>
 <Y1Lldx9p5Fm5u0Oh@ashyti-mobl2.lan>
 <167818fb-6eb5-7836-16a1-620853821734@intel.com>
 <8735bdfwui.fsf@intel.com> <Y1Zd/jljNIYP6Qx9@ashyti-mobl2.lan>
Date: Mon, 24 Oct 2022 13:00:58 +0300
Message-ID: <87wn8pee1x.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 1/2] drm/i915: use intel_uncore_rmw when
 appropriate
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
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, intel-gfx@lists.freedesktop.org,
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 24 Oct 2022, Andi Shyti <andi.shyti@linux.intel.com> wrote:
> PS Hard habits are hard to die: I still like the 80 characters
> because they force programmers to write cleaner code and, as a
> tiling wm user, I find it more convenient.

I generally try to fit everything in 80 columns too, but I also don't
like to split it up just because some line goes a few chars over.

BR,
Jani.



-- 
Jani Nikula, Intel Open Source Graphics Center
