Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5834241DD
	for <lists+intel-gfx@lfdr.de>; Wed,  6 Oct 2021 17:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4D1AE6EDAA;
	Wed,  6 Oct 2021 15:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 859836EDB3
 for <intel-gfx@lists.freedesktop.org>; Wed,  6 Oct 2021 15:52:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10129"; a="212966667"
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="212966667"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 08:52:24 -0700
X-IronPort-AV: E=Sophos;i="5.85,352,1624345200"; d="scan'208";a="478163783"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2021 08:52:22 -0700
Date: Wed, 6 Oct 2021 18:45:31 +0300 (EEST)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: =?ISO-8859-15?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
cc: Kai Vehmanen <kai.vehmanen@linux.intel.com>, 
 intel-gfx@lists.freedesktop.org, uma.shankar@intel.com, 
 jani.nikula@intel.com
In-Reply-To: <YV2pbdFxdGfZkQ3B@intel.com>
Message-ID: <alpine.DEB.2.22.394.2110061844070.3554566@eliteleevi.tm.intel.com>
References: <20210913164004.3999218-1-kai.vehmanen@linux.intel.com>
 <YV2pbdFxdGfZkQ3B@intel.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Content-Type: multipart/mixed;
 boundary="-318106570-1784624082-1633535136=:3554566"
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915/display: program audio CDCLK-TS
 for keepalives
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

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

---318106570-1784624082-1633535136=:3554566
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

Hi,

On Wed, 6 Oct 2021, Ville Syrjälä wrote:

> On Mon, Sep 13, 2021 at 07:40:04PM +0300, Kai Vehmanen wrote:
> > XE_LPD display adds support for display audio codec keepalive feature.
> > This feature works also when display codec is in D3 state and the audio
> > link is off (BCLK off). To enable this functionality, display driver
> > must update the AUD_TS_CDCLK_M/N registers whenever CDCLK is changed.
> > Actual timestamps are generated only when the audio codec driver
> > specifically enables the KeepAlive (KAE) feature.
[...]
> > +	if (refclk == 24000)
> > +		aud_ts->m = 12;
> 
> Wasn't there a single exception to this rule? Ie. should this be 
> if (refclk == 24000 && cdclk != something) ?

ack. I had a discussion with hw folks on this and concluded we can go
with the simple formula.

Br, Kai
---318106570-1784624082-1633535136=:3554566--
