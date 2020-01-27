Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA1614A564
	for <lists+intel-gfx@lfdr.de>; Mon, 27 Jan 2020 14:48:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CB0DF6E508;
	Mon, 27 Jan 2020 13:48:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EF16A6E4EC
 for <intel-gfx@lists.freedesktop.org>; Mon, 27 Jan 2020 13:48:48 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 05:48:44 -0800
X-IronPort-AV: E=Sophos;i="5.70,370,1574150400"; d="scan'208";a="221738561"
Received: from jlahtine-desk.ger.corp.intel.com (HELO localhost)
 ([10.252.21.41])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jan 2020 05:48:41 -0800
MIME-Version: 1.0
In-Reply-To: <cover.1579871655.git.jani.nikula@intel.com>
References: <cover.1579871655.git.jani.nikula@intel.com>
From: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
Date: Mon, 27 Jan 2020 15:48:38 +0200
Message-ID: <158013291880.7038.12509131562829696368@jlahtine-desk.ger.corp.intel.com>
User-Agent: alot/0.8.1
Subject: Re: [Intel-gfx] [RFC 00/33] drm/i915/display: mass conversion to
 intel_de_*() register accessors
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
Cc: Jani Nikula <jani.nikula@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Jani Nikula (2020-01-24 15:25:21)
> Hey all,
> 
> So I sent [1] to convert some forcewake register accessors... but what if we
> just ripped off the bandage once and for all? It's going to hurt, a lot, but
> we'd get it done.
> 
> This completely rids us of the "dev_priv" dependency in display/.
> 
> All the patches here are per-file and independent of each other. We could also
> pick and apply the ones that are least likely to conflict.
> 
> Opinions?

Acked-by: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>

Regards, Joonas
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
