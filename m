Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E043633C9B
	for <lists+intel-gfx@lfdr.de>; Tue, 22 Nov 2022 13:36:14 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5408410E3D0;
	Tue, 22 Nov 2022 12:36:12 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 27EDB10E3D0
 for <intel-gfx@lists.freedesktop.org>; Tue, 22 Nov 2022 12:36:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1669120569; x=1700656569;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=k5v7fb7MklLHBVkPXcuGSpZ10UamHTIwIIVTNJtS8H8=;
 b=ESoYu7F900clB4/9sEci7ZSoFLm6IaKDJLtr/pGLfVl83oXf5LHhN08q
 /FbJSf7sfK4Aej0wjInhYUCODvKgVxpqbdF60vZE81TSNGA/BvDK3Yb4N
 b0+na9rH+UEK+YzlE/LbDVxui7bfiQg4upM4tmqo8qbZEvwNJHEaD9nQC
 05KauKlYpUBysZrQWCg9bADHtiaIuRWhZm0hLQP4xJGwex0jEhlDR+IPW
 7Nv3XEiI8KwMP1fe6IizALeXfvIxQTYwFhRGx810zkI/CYHgVw9r+WsVt
 oqRCvE7IvP9b0SNOxEOaYQtMDhehnlMgZ0PWU8TISDl3abegResBzsuh4 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="375946931"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="375946931"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:36:08 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10538"; a="592129650"
X-IronPort-AV: E=Sophos;i="5.96,184,1665471600"; d="scan'208";a="592129650"
Received: from sfflynn-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.18.151])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Nov 2022 04:36:07 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87leo3xj37.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20221122120825.26338-1-ville.syrjala@linux.intel.com>
 <20221122120825.26338-8-ville.syrjala@linux.intel.com>
 <87leo3xj37.fsf@intel.com>
Date: Tue, 22 Nov 2022 14:36:04 +0200
Message-ID: <87h6yrxj2j.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 07/10] drm/i915/dvo: Use REG_BIT() & co. for
 DVO registers
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

On Tue, 22 Nov 2022, Jani Nikula <jani.nikula@linux.intel.com> wrote:
> On Tue, 22 Nov 2022, Ville Syrjala <ville.syrjala@linux.intel.com> wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>
>> Polish the DVO port regisesters with REG_BIT()/etc.

*registers

>>
>> Signed-off-by: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

--=20
Jani Nikula, Intel Open Source Graphics Center
