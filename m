Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B645F53E50B
	for <lists+intel-gfx@lfdr.de>; Mon,  6 Jun 2022 16:22:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D657F11B5CC;
	Mon,  6 Jun 2022 14:22:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from farmhouse.coelho.fi (paleale.coelho.fi [176.9.41.70])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C18811B5BB
 for <intel-gfx@lists.freedesktop.org>; Mon,  6 Jun 2022 14:22:43 +0000 (UTC)
Received: from 91-156-6-107.elisa-laajakaista.fi ([91.156.6.107]
 helo=[192.168.100.150])
 by farmhouse.coelho.fi with esmtpsa (TLS1.3) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <luca@coelho.fi>) id 1nyDcs-001KMv-FR;
 Mon, 06 Jun 2022 17:22:40 +0300
Message-ID: <345f478e6917f39e68cce331250cf1003e73142d.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Anshuman Gupta <anshuman.gupta@intel.com>, intel-gfx@lists.freedesktop.org
Date: Mon, 06 Jun 2022 17:22:37 +0300
In-Reply-To: <20220606122656.31479-1-anshuman.gupta@intel.com>
References: <20220606122656.31479-1-anshuman.gupta@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.1-2 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP autolearn=ham autolearn_force=no version=3.4.6
Subject: Re: [Intel-gfx] [PATCH] drm/i915/dgfx: Disable d3cold Correctly
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
Cc: rodrigo.vivi@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Mon, 2022-06-06 at 17:56 +0530, Anshuman Gupta wrote:
> Currently i915 disables d3cold for i915 pci dev.
> This blocks D3 for i915 gfx pci upstream bridge (VSP).
> Let's disable d3cold at gfx root port to make sure that
> i915 gfx VSP can transition to D3 to save some power.

(nit) It's better to use imperative in the commit message, so "Disable
d3cold at gfx root port..." would be easier to read.

Also, from the code, it's clear that you're disabling d3cold in the
root now, instead of in the pdev itself.  But you don't explain why you
moved the enabling/disabling to hw_probe and remove_hw from the actual
PM calls...

--
Cheers,
Luca.
