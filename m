Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F077EBE97
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 09:32:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F63410E500;
	Wed, 15 Nov 2023 08:32:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6272610E500
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 08:32:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700037123; x=1731573123;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=tO17N3eIqCaS9kyBj4XMRBjs8Nls2kJ9Qw6Lu4yZeRY=;
 b=Y/wcoMbjs9N/Mzxx1wyMNeD2+o4HGKwkL0Z+mJyiQSo0Ec13B6eiJC9S
 CpGXLMsBqEYnobNhPIxb2h/8VP3Ni8BBbtscxUkNYlBMHqr2f/pvlihYi
 BNEJDkXnf/IIjB8++xCz/5zlOY786+F5boWmnyWtO5CGP5qI1UfYU5yIK
 naICXdmhV3F/Knoz8+eBSpJaYsoaTadd+FsTRSDcB9OWBbeMRqXWl/1su
 G4yNSQKkxv5v8OLeEb/xQ8VDqWCIP8tch/Qw9q0PCj2ZwE6MZ/5m3ZhB2
 uIzp0Jdb920kwNTaXNIecLtU36/UkaxcX0DYSYX04Rfd2QZCSUGnomeJT w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10894"; a="375873893"
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; d="scan'208";a="375873893"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 00:32:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,304,1694761200"; 
   d="scan'208";a="6336356"
Received: from aklett-mobl4.ger.corp.intel.com (HELO localhost)
 ([10.252.38.156])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 00:31:55 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ville =?utf-8?B?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
In-Reply-To: <ZVSAxX5T6jQMB_kj@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231106211915.13406-1-ville.syrjala@linux.intel.com>
 <20231106211915.13406-11-ville.syrjala@linux.intel.com>
 <87leb1tzzn.fsf@intel.com> <ZVM2eebisBtZ_88k@intel.com>
 <ZVSAxX5T6jQMB_kj@intel.com>
Date: Wed, 15 Nov 2023 10:31:52 +0200
Message-ID: <87ttpnqux3.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH 10/11] drm/i915: Push audio_{enable,
 disable}() to the pre/post pane update stage
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 15 Nov 2023, Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com=
> wrote:
> After further thought it won't work because we do stuff like
> 	is_enabling(...) || other_conditions
>
> So we need the crtc_state->hw.active check to catch both sides
> of the OR.

Ah, true.


--=20
Jani Nikula, Intel
