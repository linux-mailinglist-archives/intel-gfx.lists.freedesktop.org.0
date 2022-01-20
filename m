Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E8C0E494B75
	for <lists+intel-gfx@lfdr.de>; Thu, 20 Jan 2022 11:14:40 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E1F089D83;
	Thu, 20 Jan 2022 10:14:38 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B69189CB9
 for <intel-gfx@lists.freedesktop.org>; Thu, 20 Jan 2022 10:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1642673677; x=1674209677;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=7/DbEpV4uLpWq4CSEZC10h084NqdSKAc6uXLufLirBg=;
 b=GfUSb6dXxPx6oO4QO1ZE9EKj05fapeUZ6ZbtWqeAJCvh9UNx6o+/mi7P
 MG/G9RfCySeZ800b7uaQk/x+bMXUYFJ9w8Kz7SKNdkhAft3yaQVfXsH1C
 S/M5hsknxBBTVlkJopKqTiFkOtnxBejS3dlYkZAjM7GOXe2a5pEy1TSF1
 PgfDQmHTVvrYhbKjskgfosuSon71eofzfeZ4gfeTEe7xIiLjt0zI9VFVO
 rVMEegyhWvAl8gwZgmvUv5KdPIxdFbL3Aza+IfQEo+/PMaG6M9RmwF7m5
 q3JuMfCfT51mFMke9SuEMWJL7PwNo7QP4X67vIZdu/qzG9VKHLEO3QpHv A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10232"; a="269717704"
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="269717704"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:14:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,302,1635231600"; d="scan'208";a="532709630"
Received: from davidfsc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.252.52.140])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2022 02:14:34 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <YeiO005743p9zOeQ@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20211217155403.31477-1-ville.syrjala@linux.intel.com>
 <YeiO005743p9zOeQ@intel.com>
Date: Thu, 20 Jan 2022 12:14:30 +0200
Message-ID: <87mtjqaf3t.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 0/6] drm/i915: Extend parse_ddi_port() to
 all g4x+ platforms
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

On Thu, 20 Jan 2022, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> On Fri, Dec 17, 2021 at 05:53:57PM +0200, Ville Syrjala wrote:
>> From: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
>>=20
>> Quick attempt at unifying the VBT DDI parsing to all g4x+
>> platforms.
>>=20
>> Note that we'll still use the hardware straps as the primary=20
>> source of port presence information on old platforms since the
>> device type bits in VBT tend to be often a bit wrong (for DP++
>> ports at least). Hopefully the rest of the information (mainly
>> aux_ch/ddc_pin) are correct.
>>=20
>> Only very slightly smoke tested on SNB so far.
>
> Smoked this a bit more on a set of ctg,ilk,snb,ivb and all seems
> good so far.
>
> Pushed to drm-intel-next with fingers and toes crossed.

Mine too! :)




--=20
Jani Nikula, Intel Open Source Graphics Center
