Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76A58AEF221
	for <lists+intel-gfx@lfdr.de>; Tue,  1 Jul 2025 11:00:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B88010E530;
	Tue,  1 Jul 2025 09:00:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from coelho.fi (coelho.fi [88.99.146.29])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 94DC610E530;
 Tue,  1 Jul 2025 09:00:23 +0000 (UTC)
Received: from 91-155-254-100.elisa-laajakaista.fi ([91.155.254.100]
 helo=[192.168.100.137])
 by coelho.fi with esmtpsa (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
 (Exim 4.97) (envelope-from <luca@coelho.fi>)
 id 1uWWqj-00000008ZO4-0WuT; Tue, 01 Jul 2025 12:00:21 +0300
Message-ID: <d79ef6e58dfca557e78ce15d2c0c0c4c1a02a46e.camel@coelho.fi>
From: Luca Coelho <luca@coelho.fi>
To: Imre Deak <imre.deak@intel.com>, intel-gfx@lists.freedesktop.org, 
 intel-xe@lists.freedesktop.org
Cc: Imre Deak <imre.deak@gmail.com>
Date: Tue, 01 Jul 2025 12:00:20 +0300
In-Reply-To: <20250626082053.219514-9-imre.deak@intel.com>
References: <20250626082053.219514-1-imre.deak@intel.com>
 <20250626082053.219514-9-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.1-1 
MIME-Version: 1.0
X-Spam-Checker-Version: SpamAssassin 4.0.1-pre1 (2023-11-21) on
 farmhouse.coelho.fi
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 TVD_RCVD_IP,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
 version=4.0.1-pre1
Subject: Re: [PATCH 08/20] drm/i915/dp: Remove the device service IRQ
 handling from connector detect
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

On Thu, 2025-06-26 at 11:20 +0300, Imre Deak wrote:
> From: Imre Deak <imre.deak@gmail.com>
>=20
> The device service IRQ handling was added to the connector detect
> function by
>=20
> commit 09b1eb130e43 ("drm/i915: Move Displayport test request and sink
> IRQ logic to intel_dp_detect()")
>=20
> since some Automated Test Request IRQs couldn't be handled in the short
> HPD IRQ handler context. This has been fixed meanwhile by deferring the
> handling of all test request events from the IRQ handler to the hotplug
> handler (intel_dp_short_pulse() -> intel_dp_test_short_pulse() ->
> reprobe) and by handling all hotplug events (both for short and long HPD
> pulses) in the test application.
>=20
> Handling device IRQs during connector detection is not standard
> compliant (the IRQs should be handled when an HPD IRQ is raised) and it
> happens in a racy way with the same device IRQ handling happening from
> the HPD IRQ handler (since the detect and HPD IRQ handler can run in
> parallel).
>=20
> Based on the above, remove the redundant call from the detect function.
>=20
> Signed-off-by: Imre Deak <imre.deak@gmail.com>
> ---

Reviewed-by: Luca Coelho <luciano.coelho@intel.com>

--
Cheers,
Luca.
