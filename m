Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CC65731A2BB
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Feb 2021 17:33:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3307B6EEA2;
	Fri, 12 Feb 2021 16:33:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E67F96EEA3
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Feb 2021 16:33:28 +0000 (UTC)
IronPort-SDR: g5wBbce/fLbUps9rKLjbcjxRstOIvrOx9dT/tkYmS2Q2zI65Q+EJGTp8YMhMB6D9cif5+Q4Fl3
 7huzICDf37nQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9893"; a="201587735"
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="201587735"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 08:33:28 -0800
IronPort-SDR: mKzeOOae8T9QKibUqVQJHoVrfyRCcGRYE4t7VZB/NrTwz81Zh7siBoVoe6YBLwNIUXCEJs16rY
 PBci52IjCL3Q==
X-IronPort-AV: E=Sophos;i="5.81,174,1610438400"; d="scan'208";a="381502795"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Feb 2021 08:33:26 -0800
Date: Fri, 12 Feb 2021 18:29:57 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <161314333325.4581.15533944489214714871@build.alporthouse.com>
Message-ID: <alpine.DEB.2.22.394.2102121827510.864696@eliteleevi.tm.intel.com>
References: <20210212145302.2461406-1-kai.vehmanen@linux.intel.com>
 <161314333325.4581.15533944489214714871@build.alporthouse.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] Revert "HAX sound: Disable probing snd_hda
 with DG1"
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
Cc: intel-gfx@lists.freedesktop.org, lucas.demarchi@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Fri, 12 Feb 2021, Chris Wilson wrote:

> Quoting Kai Vehmanen (2021-02-12 14:53:02)
> > This reverts commit 3632610d38316bca9b0cd9d649ce3cefab58520a.
> > 
> > DG1 has been supported in upstream since v5.10 with commit
> > 69b08bdfa818 ("ALSA: hda - add Intel DG1 PCI and HDMI ids").
> 
> Exactly, otherwise this patch wouldn't have been required to stop CI
> from timing out upon snd probing the hdmi components. You need the other
> half to be supported as well before CI is ready.

aa, got it, so this is there as i915 doesn't have DG1 in i915_pci.c 
id list. Right.

PS And indeed, the 60sec timeout in these cases is pretty annoying.

Br, Kai

_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
