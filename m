Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0377B8A6B55
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Apr 2024 14:41:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7FDF210F4E9;
	Tue, 16 Apr 2024 12:41:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DGILtrFL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5C05110F4E9
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Apr 2024 12:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713271315; x=1744807315;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version:content-transfer-encoding;
 bh=9lm9gLMfdqJDr14H4atP+/9kvfFEhrfD1gfH4rSBl50=;
 b=DGILtrFLIn56kdihdN+oAaAJlzPEmu4vMDvpt0k83g3iuydfYAmCtfly
 Z4iL4CU2bVLR6NhTmWLS8WjotJdVK1DS902K7OMklHg20Fi3G6DUQAuVx
 qLnAyj3Z3Qp7pzomkuh1US7FLEA37ORN1ac/h5U+SkCg+KZWHIzm9cazl
 paXAk1Jij3LotQvKy9WyvMMALo4DpKat/s0IvpVSPw4syfjL+Z3hK4LSD
 X1UBBKZFNqJjgjm4YQ20nSRkg7gjS+mn1PvQ3hMEHbjx8sYmFqUKuK4cY
 MSSr+gvLBWx0rbHsp7R79RhwlS9k3A17ScS9bPsoY/GWNMoTp4dFwzqlX Q==;
X-CSE-ConnectionGUID: U0e5NvJyTKOMk7WPK6rSBg==
X-CSE-MsgGUID: ehVDnjY5TyuljZ+kT9LA9Q==
X-IronPort-AV: E=McAfee;i="6600,9927,11046"; a="20093636"
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="20093636"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 05:41:54 -0700
X-CSE-ConnectionGUID: FmhN4TmKRqGI1Fpt0CnxRQ==
X-CSE-MsgGUID: vtsSGt1WTVqY1zmdZs5sBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,206,1708416000"; d="scan'208";a="45528759"
Received: from martakit-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.44.100])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Apr 2024 05:41:53 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Jos=C3=A9?= Relvas <josemonsantorelvas@gmail.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [REQUEST] Add support for Intel DPST (Display Power Saving
 Technology)
In-Reply-To: <Zh5HtM6vG2xYsrT5@aquecedor-3-0>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <ZhADkdyItNEuoxKN@aquecedor-3-0.lan> <87sezlzqib.fsf@intel.com>
 <Zh5HtM6vG2xYsrT5@aquecedor-3-0>
Date: Tue, 16 Apr 2024 15:41:50 +0300
Message-ID: <87edb5zdgx.fsf@intel.com>
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

On Tue, 16 Apr 2024, Jos=C3=A9 Relvas <josemonsantorelvas@gmail.com> wrote:
> One more question. Some documentation refers to=20
> "OPST (OLED power saving technology)". It's my understanding that this
> uses the same hardware blocks and APIs as DPST - only the algorithm
> in software is different. Userspace would need a way to distinguish
> OLED panels from LCD panels so it can use the right algorithm. Is
> there a reliable way of doing this?=20
> On my Thinkpad P1 gen 6, the OLED exposes a standard intel_backlight,
> which actually controls the PWM. Afaik, there's no other way of
> telling OLED and LCD apart in userspace.

The intel_backlight interface can actually control the brightness of the
OLED panel using the DPCD interface, not only backlight PWM. It depends
on the panel. See intel_dp_aux_backlight.c. (And yes, backlight can be a
misnomer here, since OLED does not have a backlight.)

I don't actually know the details of OPST, but some OLED panels I've
worked with in the past have CABC, or content adaptive brightness
control, where all of it is handled internally in the panel. You just
tune the aggressiveness or some other mode.

BR,
Jani.



--=20
Jani Nikula, Intel
