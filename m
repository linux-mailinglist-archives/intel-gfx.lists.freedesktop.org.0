Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8D8AD532B
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Jun 2025 13:08:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A02410E618;
	Wed, 11 Jun 2025 11:08:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="apqf5Rp9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A504B10E618;
 Wed, 11 Jun 2025 11:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1749640131; x=1781176131;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=tH7Ik4bB2rRYYRMX2QLXUPkAejB5f194WYWXr0XbnCA=;
 b=apqf5Rp95ru9DrHjHSGrZCoSJGurcpwoS3NzluSVdfxz/yIxv0HtgBb5
 nZ5MS5UExME4BbuJ3eVBQ3v9MENaqY6TIIN8i6ksqOIhX9lPedyeT7twF
 wXjImG3vqk2FzWUUfY0ezoPu9tJmGLXa2qPKSP7cg1xKdgCCB1257e3It
 Rhq9kODarObKGZktbcspGwRUKpzWRF1C0oSzS65sybV97DeTCbQOyc3+1
 tEZYLKjKBig9GY5ySl7LJWrfW6QRD9PX3qyUQPRqcPgJkqQ6daixXmNGR
 9Rx2wegfAf+MsBACM9eGTmCRehMG1OnC88aqAIaQ9L9lbI0r6A4GCWyFb Q==;
X-CSE-ConnectionGUID: v5u2imNyQHGWNZ0qYbQXpQ==
X-CSE-MsgGUID: aXxVKWpqTo+3hyzsCzBelg==
X-IronPort-AV: E=McAfee;i="6800,10657,11460"; a="55442761"
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="55442761"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 04:08:46 -0700
X-CSE-ConnectionGUID: 7IjhWDMIS8K9VciBMnIj/g==
X-CSE-MsgGUID: kZw00IJgS5K9Bgjp+2S+bA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,227,1744095600"; d="scan'208";a="147155123"
Received: from mjarzebo-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.209])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jun 2025 04:08:44 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: "Grzelak, Michal" <michal.grzelak@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 0/2] drm/i915/display: register include cleanups
In-Reply-To: <PH0PR11MB5062EED5AC7326D84984EEBF8F6AA@PH0PR11MB5062.namprd11.prod.outlook.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1749469962.git.jani.nikula@intel.com>
 <PH0PR11MB5062EED5AC7326D84984EEBF8F6AA@PH0PR11MB5062.namprd11.prod.outlook.com>
Date: Wed, 11 Jun 2025 14:08:41 +0300
Message-ID: <8c245e4c64305d4c884f20bd61bd6a3914194428@intel.com>
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

On Tue, 10 Jun 2025, "Grzelak, Michal" <michal.grzelak@intel.com> wrote:
> Looks good to me, for the whole series:
> Reviewed-by: Micha=C5=82 Grzelak <michal.grzelak@intel.com>

Thanks for the review, pushed to drm-intel-next.

BR,
Jani.


--=20
Jani Nikula, Intel
