Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A7FB191947
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Mar 2020 19:38:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 75ED889CE1;
	Tue, 24 Mar 2020 18:38:10 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2FD8789CE1
 for <intel-gfx@lists.freedesktop.org>; Tue, 24 Mar 2020 18:38:09 +0000 (UTC)
IronPort-SDR: TRXpZlPOuO8978oKBelUAt/+96u46GdmoxTwPrbHC3Dit5viz41j5CRf6Oh84ykGS93qYUgjsu
 ZRTeq/CsboEA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2020 11:38:08 -0700
IronPort-SDR: +7RKgIhYnxnewLgOapHGWQRZ5vHnjq2MPb8AUjBj6B/lAKI9nNgbi065NHPJav6CKq/MYDTsSG
 amcIkoD46ZWQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,301,1580803200"; d="scan'208";a="246811677"
Received: from eliteleevi.tm.intel.com ([10.237.54.20])
 by orsmga003.jf.intel.com with ESMTP; 24 Mar 2020 11:38:06 -0700
Date: Tue, 24 Mar 2020 20:38:05 +0200 (EET)
From: Kai Vehmanen <kai.vehmanen@linux.intel.com>
X-X-Sender: kvehmane@eliteleevi.tm.intel.com
To: "Shankar, Uma" <uma.shankar@intel.com>
In-Reply-To: <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
Message-ID: <alpine.DEB.2.21.2003242034350.2957@eliteleevi.tm.intel.com>
References: <20200318113009.16757-1-uma.shankar@intel.com>
 <469075d16551fe95e2fdadfd6ffd1538a8f3a657.camel@intel.com>
 <E7C9878FBA1C6D42A1CA3F62AEB6945F82437F00@BGSMSX104.gar.corp.intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7 02160 Espoo
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Trigger Modeset at boot
 for audio codec init
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
Cc: "Khor, Swee Aun" <swee.aun.khor@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hey folks,

On Fri, 20 Mar 2020, Shankar, Uma wrote:
> Souza, Jose <jose.souza@intel.com> wrote:
> > On Wed, 2020-03-18 at 17:00 +0530, Uma Shankar wrote:
> > > This patch fixes the same by triggering a modeset at boot.
> > 
> > We had the same issue for PSR, take a look to the fix:
> > commit 33e059a2e4df454359f642f2235af39de9d3e914
> > drm/i915/psr: Force PSR probe only after full initialization
> > 
> > Maybe make this even more generic.
> 
> Yeah this looks to dealing with almost a similar need. Thanks for pointing this out,
> will try to come up with a generalized solution.

btw, there's an additional regression in the posted patch, reported 
by Michael Marley in:

"HDMI/DisplayPort audio does not work initially on boot with Linux 5.6 
(Bisected)"
https://gitlab.freedesktop.org/drm/intel/issues/1363

Br, Kai
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
