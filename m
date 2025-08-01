Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 25621B17F1A
	for <lists+intel-gfx@lfdr.de>; Fri,  1 Aug 2025 11:19:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BAF4510E814;
	Fri,  1 Aug 2025 09:19:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BJeHKyzV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F38B310E814
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 Aug 2025 09:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754039958; x=1785575958;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version:content-transfer-encoding;
 bh=fFkqJg5qFrj+7Qhe4D2GzbaBvZZL89XCdtOvyrz2Gbc=;
 b=BJeHKyzVGpQrc7U4mn/HCgepIlGfmZG1UFySseBNEiKtbwIsxZSctaRV
 dQ/fFmaW0xObkdovJtBdVy+WN6ga0bZViZWcthrg/OldWbpdnwEtEysJC
 u567h+zvCiVcTFH0nFYwlf9N2LeebWF7yq1dIla8fTfuhn9k+hfcuIg+l
 fhL4PJiFKxdPcrYegSy+/KEplJIRiJpoERCQiHPUj0zT4OlXSKO8AQ2iF
 uyUSbppC4AO1ojMOSaIz6S6XerFeReBcCHCNH7FuYzUs+j9GYkOJk3GAh
 tFeBoVASFWOrD8ReiCpdqb0ZJ7tAjMaIiTf7JEoIYWbVfWnuV46FIN5kt A==;
X-CSE-ConnectionGUID: Gzs0RGvVQLWNh05aDAcOdw==
X-CSE-MsgGUID: FH1sfY9/SFCpBTOvujYz+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11508"; a="56319981"
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="56319981"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:19:18 -0700
X-CSE-ConnectionGUID: iDLRp8X2RZ62x29xsFsvGQ==
X-CSE-MsgGUID: LkNnqkaEScuAh+2TFco+7g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,255,1747724400"; d="scan'208";a="163440849"
Received: from hrotuna-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.164])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Aug 2025 02:19:15 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: =?utf-8?Q?Ren=C3=A9?= Herman <rene.herman@gmail.com>, Rodrigo Vivi
 <rodrigo.vivi@intel.com>, Ville =?utf-8?B?U3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: Issue or bug concerning DRRS on old i7-4980HQ
In-Reply-To: <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <3aebffd3-b3b7-4c3c-a7ac-816965d0204d@gmail.com>
 <77f3386d-756b-4cca-b317-1b3c5ad725fb@gmail.com>
Date: Fri, 01 Aug 2025 12:19:09 +0300
Message-ID: <b2250460639d81b79f15995c9769eac21849766b@intel.com>
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

On Thu, 31 Jul 2025, Ren=C3=A9 Herman <rene.herman@gmail.com> wrote:
> Here's that Ubuntu launchpad bug on freedesktop.org, but including a=20
> possibly interesting fix from 5 months ago in the currently last comment:
>
> https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/3441

Might be useful to attach dmesg and VBT to the bug as described at [1].

BR,
Jani.


[1] https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

--=20
Jani Nikula, Intel
