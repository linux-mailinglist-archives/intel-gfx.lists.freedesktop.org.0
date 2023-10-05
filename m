Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D73AD7BA028
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Oct 2023 16:35:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4C8F110E079;
	Thu,  5 Oct 2023 14:35:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8B2EE10E412
 for <intel-gfx@lists.freedesktop.org>; Thu,  5 Oct 2023 14:35:28 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="469786856"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="469786856"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 07:33:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="745466841"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="745466841"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.153])
 by orsmga007.jf.intel.com with SMTP; 05 Oct 2023 07:32:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 05 Oct 2023 17:32:58 +0300
Resent-From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
Resent-Date: Thu, 5 Oct 2023 17:32:58 +0300
Resent-Message-ID: <ZR7JGrQKcYv-UQUW@intel.com>
Resent-To: intel-gfx@lists.freedesktop.org
X-Original-To: ville.syrjala@linux.intel.com
Delivered-To: ville.syrjala@linux.intel.com
Received: from linux.intel.com [10.54.29.200]
 by stinkbox.stink.local with IMAP (fetchmail-6.4.37)
 for <vsyrjala@localhost> (single-drop); Thu, 05 Oct 2023 16:21:28 +0300 (EEST)
Received: from orviesa001.jf.intel.com (ORVIESA001.jf.intel.com
 [10.64.159.141])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by linux.intel.com (Postfix) with ESMTPS id 77EC7580D25
 for <ville.syrjala@linux.intel.com>; Thu,  5 Oct 2023 06:20:46 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; 
   d="scan'208";a="2186255"
Received: from orsmga102-1.jf.intel.com (HELO mgamail.intel.com)
 ([10.7.208.27])
 by smtp.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:20:01 -0700
Authentication-Results: mtab.intel.com; spf=None smtp.pra=contact@emersion.fr;
 spf=Pass smtp.mailfrom=contact@emersion.fr;
 spf=Pass smtp.helo=postmaster@mail-4317.proton.ch;
 dkim=pass (signature verified) header.i=@emersion.fr;
 dmarc=pass (p=none dis=none) d=emersion.fr
IronPort-SDR: 651eb749_zxXC0kwKZU50PI5PhsPHPnHIOO0FjdbydtaFqovZrVL+0Oa
 m3bzvTQmH11qAhpFQwcNzNx2KLlyPUt0KsIUJxw==
X-IPAS-Result: =?us-ascii?q?A0EtAgADtx5lhxErRrlaHgE8DAILFYFPgjd6VTEHCEgEh?=
 =?us-ascii?q?BM8kV+Lbo4LhAWBdQkPAQEBAQEBAQEBCS4NCQQBAQMBA4UAhw4CHwYBBDAJD?=
 =?us-ascii?q?gECAQIBAQEBAQMCAQIBAQEBAQEDAQEBAgIBAQECAQECBAIBAQEBAhABAQEBI?=
 =?us-ascii?q?hcHDhAnhWgNgjcrATNqgR0BAQEBAQEBAQEBAQEBHQIIBVwBIQEEAgkXBBkBA?=
 =?us-ascii?q?TcBGBwCJgJygn4Bgl4HAQyVJ5s4en8zgQGCCQEBBgQFAbJrAwaBGi6CL4Jkg?=
 =?us-ascii?q?ncBhQuEAXonGzBNgRCEfoFShkwZgk+EBYU9BzKCJIJCbCqKOHITR3AbAwcDg?=
 =?us-ascii?q?QMQKwcELyIGCRYtJQZRBCILJAkTEj4EgWaBUgqBBj8PDhGCQys2NhlLglsJF?=
 =?us-ascii?q?Qw1TXYQKwQUF4EUbh8VHjcREhcNAwh2HQIRIzwDBQMEDyUKFQ0LIQUUQwNHB?=
 =?us-ascii?q?ksLAwIcBQMDBIE4BQ8eAhAuKQMDGU0CEBQDLA8DAwYDCzEDMFdLDFkEegNEH?=
 =?us-ascii?q?UADC209NRQbBpxkPDGCZwEpJT8sBBwCgStyCY4kk3miXoISDIF4jAGVB02pZ?=
 =?us-ascii?q?AGSa4VMiW2CAIF1mmmBYzqBXDMaCB8RgyJPAxkPjjmFHYNWimVEMgIBATcCB?=
 =?us-ascii?q?wEKAQEDCYkigigBAQ?=
IronPort-PHdr: A9a23:TWuhgxwQdQAxcfDXCzKjxVBlVkEcU1XcAAcZ59Idhq5Udez7ptK+Z
 hyZuakm0Q6BHd2Cra4e1ayO6+GocFdDyK7JiGoFfp1IWk1NouQttCtkPvS4D1bmJuXhdS0wE
 ZcKflZk+3amLRodQ56mNBXdrXKo8DEdBAj0OxZrKeTpAI7SiNm82/yv95HJbAhEmjmwbal9I
 Ri5ogncts0bipZmJqot1xfFuHRFd/pXyG9yOV6fgxPw7dqs8ZB+9Chdp+gv/NNaX6XgeKQ4Q
 71YDDA4PG0w+cbmqxrNQxaR63UFSmkZnQZGDAbD7BHhQ5f+qTD6ufZn2CmbJsL5U7Y5Uim/4
 qhxSR/ojCAHNyMl8GzSl8d9gr5XrA6nqhdi2IPffp2bO+RicaPcZdMaRHROXsBNVyxaH4iwa
 5IDA/cdMepEqoXwoUYFoxmjCgm2HO7hxCFGiH/o0KMn0OouHh3J0gM7EtISqXTZtsn5OLsOX
 e23yqTD0DXNb+lR2Tf48IXGbxEhofSLXbJ2bMHf1FcgFxnYhViXtYPlODWV1vgXvGeH8+ptT
 vygi2s5pAFruTivx8Asio/TioIb0FDJ7CN0y5s6KtOkUkB0e8KkEIdOuCGAMYt7WscvT3xnt
 ig617ELuJC2cDQWxZk62xPRZPKJfYeI7B/tSeufLzh1iXJldr+imxq/9VStx+3/W8S2zlpEo
 SVInsXKu3sQ2RLT7c2HReF8/kenwTuP2RrT5f9aLk8pi6XbMJ0hwqI3lpoLq0jDGTX2mErug
 K+VaEok4O6o5PrjYrn8oZ+cLYB0hwfjOaotgsyyGfk0PwsOUmSB++mwyKfv8EL3TblQk/E7k
 K/Uu43AK8sBvK62GQpV354j6xmhCzem18wVnXwdI1JEfBKLlofkNl/TLP36F/u/m06skDB3x
 /DBOL3tGInCLnjbnLfge7Zy9VJcxRIuwd1c559YELMMLO7pVkL+utHUFAI1Pg6sz+biEtp91
 4ceWWyVAq+eNaPfqUOH5uUpI+mQfoAapCr9JuM76P7rk3A5g0Qdfaiu3ZsRcny4EO5mL12fY
 XX3mtgBC3sFvhIiTOz2j12PSSNfa26oX60g/jE7FJ6mDYDbS4CzgbyB2CO7EYNMamBdClGMC
 3XoeJ+AW/gWcy+SJs5hkjoZVbmuUYMh1BeutBPkxLpjNObb5ioYtZewnORysuHJlFQ++CJ5C
 +yZ0nqRVCd6hG4FSzIt37x4uQp60FjQ/7J/hqljFNlU4btyXx1yYZXbyfBzAMzaVwfMZMyIT
 1DgTM/wUmJ5dc4439JbOxU1IN6llB2WmnPyW9f96pSVUcVnuquJxWP4Yt19wiybivpphAw8T
 89GJWCqwbRy8wHDCoKa20nMmqOnb78d2yiL+n3QqAjvpxRASglsVqPAVHEbPBiesYGguBKcE
 ub3Wex7YUNRnJfce/UVNYSx1QkVIZWCMtSLYEWxsUmfDy3S9I6qUaH2WFdM5RvEWEk/ox4M4
 3qDHBQlRQy7g031Km1BTQe8BiGN8bxSoW+2HHMznS+QaEgz/LHnwQMfh/GXV6E206kfsSgs7
 hRYTniw0t7cAtGD4itNLotGZtZv3FAV/mmLmwVhM87FTcEqvUMUcQl8oxHU2g1zG8B8lpoEo
 X4mxgN5Kue5/AFkeiiD1J/9f5z7eEPT2THqUKPS11rC18zFn8Vu4qEZhA6ygiOrTHAA9GRhw
 918/ybBypjzAyYpa7X3YH1qzkhH/+32XCAP7oHkjCdCYY+76hDj0IMzPscq5AySRdJAHcbmd
 UerTuNCGceHObVxkQKHMAwkLrFK9YIuP+Oqdee62b+vFuVgrQj5qzwAzLFRjU+ep21mFsmQ5
 LIlmcHI0S6BUgylpXDE0KG/hId9PhsQIjC1xjT0G45Va/1NLZcnVF/wfcCW2sxu34fEBmAAr
 1CTKQ5bguv3fT7PfXbS
IronPort-Data: A9a23:48k+kq6qZnVrIPEEUFt+LQxRtAnDchMFZxGqfqrLsTDasY5as4F+v
 mMXXW2PPf6NYGakLdF2bY/koRlUusLQxoBmHAI++CoxEysa+MHILOrCEkqhZCn6wu8v7a5EA
 2fyTvGZdJhcoqr0/0/1WlTHhScijfngqp3UUbaUZ3wZqTdMEXtn01Q58wIAqtQAqcCjBA+Qs
 s/FrcTaOVu0sxZ5KWt8B5ir8XuDh9ys/mtD1rACTaoT5gSHzyFIVMh3yZyZdhMUfKEFRoZWe
 M6elNlVzkuBlz8xB9WslKrMc0FiatY+6iDV0hK684D76vRzjnRaPpQTbZLwWm8O49m9pO2d/
 f0W3XCGYVxwYvCTwrR1vy5wSEmSNYUekFPOzOPWXca7lyUqeFO1qxli4dpf0ST1NY+bDEkXn
 cH0JgzhYTifjOmp4YKLWtJei/t9IdnyG9kvhihJmGSx4fYOGfgvQo3P7N5cmWtr358IBezZe
 80fLzFvBPjCS0QfZxFIUNRix6Hx2RETcBUAwL6RjaEw5XTaxxBZ3b3gKsHUfdrMS989ckOw/
 TKYpD6iUkxFXDCZ4Qip90iJvrDkpw/EQ4YsMOKA/MJl2lLGkwT/DzVNCQvg/6jo4qKkYPpBK
 kgQ92w1vLIw/UiiZt38WQCo5n+CohMYHdFXFoUHBBqlz6PV50PFXTFbCCZbb8Ahsok9RVTGy
 2Nlgfv1DjdwkY2lWUmv+4jKoCOrHnIlETYrMHpsoRQ+3/Hvp4Q6jxTqR9llEbKogtCdJd0W6
 27TxMTZr+tJ5fPnx5lX7nib3Gvw+smhohodtlyKAzrNAhZRPdb9D7FE/2Q3+t5rDO6korSpu
 XEFn43Ct7lRS4mXkzCKRqMGHNlFBspp0hWD3TaD/LF7rVxBHkJPm6gMv1mSw281bK45lcfBO
 hO7hO+ozMY70IGWRaF2eZmtLM8h0LLtE9/oPtiNMIsQPsQtLlPbpH4zDaJ144wLuBZ1+U3YE
 cnBGftA8V5AYUia5GDmHrl1PUEDn31vrY8seXwL50/7geHANS/9pUYtKEGJcuc/pKqLyDg5A
 P4BX/ZmPy53CbWkCgGOqdB7BQlTcRATW8usw+QJLbHrH+aTMDp8YxMn6eh9INMNcmU8vrugw
 0xRrWcBlQqk3CeXcFvaAp2hAZu2NatCQbsAFXVEFX6l3nU5eoeo6uERbfMKkXMPrrE7k5aYl
 tFVJJnSMecFUTnd5TUWYL/0qYEoJlzhhhuDM2DhKHIzdoJpDV6BsNL1XBrdxA9XBAqOtOw6v
 +KB0CHfSsE9XAhMNpvdR8+u6FKThkIjvtxOcXHGGfRtXXn90ZNLLnXxh8AnIstXJhTkwCCb5
 jmsAhwZhLfsptY1+ebWmYaoipePArZhFU8LR2OBsauHbybb2kGBwoZwdvmCUh6AdWHz+YSkP
 f50ydOlOtI5vV96iahOOJc18rAb+PzR/6R7yCZgF1X1N2WbMKtqeCS67JMep59zya98kirof
 EC2o/1xG6iDYeHhG34vfDsVVPyJj6woq2OD/MYOARvI4QFs9+C6SmRUBR6HjRJdIJZTMI8Ix
 eQAutYc2zegiygFY8q3sSRJy1uidnAwcb0rlpU/Mr/ZjgAGzlJjY5uFBBTmv7CJSdFHaXcxL
 hGu2aHturV7x2j5SUQVK0Tj5+RmqK41iEh492Naf1WtsfjZt8AzxyxUoGgWTBwK7xBp0NBTG
 2lMNm9xL5qw7jwygNZJXj2pEABgHzycwFT6kHESpV3aTm6pd23DF3I8MuCz53Ik83pQUzxY3
 bOAwkPnbGraR97w1S4MRkJVkfzvYthv/Ankmsr8PcC6M7QlQDji2ImCWHEprkb5PMYPm0H3n
 +lm0+JuY6ndNyRLgakaCZGf5IsAWiK/O21ObvFwzpwnRViGVmmJ5gGPDEStdudmBf/Aqxa4A
 vMzAPN/bU210SLWow0L
IronPort-HdrOrdr: A9a23:JODyd67aINwywf4R7QPXwN3XdLJyesId70hD6qm+c3Nom6uj5q
 WTdZUgpH3JYVMqM03I9urrBED+exPhHPJOjbX5Xo3SPzUO2lHIEGgK1+KL/9SKIUPDH4BmuJ
 tdTw==
X-Talos-CUID: 9a23:2skxxmNupxCF2O5DRCJs628kKtAeQHDiknrAOmjiOVowYejA
X-Talos-MUID: 9a23:liVGnwrh+llZkgByy3kezwNOMf1N2/uFMmwyipE4n5a8PxB/YTjI2Q==
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-AV: E=McAfee;i="6600,9927,10854"; a="386323857"
X-IronPort-AV: E=Sophos;i="6.03,203,1694761200"; d="scan'208";a="386323857"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from mail-4317.proton.ch ([185.70.43.17])
 by mtab.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Oct 2023 06:16:48 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail2; t=1696511804; x=1696771004;
 bh=kOhBFGbS2ZUNUCtKZ9QVq8iSXvwvdmAts+CrHGCN9G0=;
 h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
 b=IG39VJj2RJoynxlAD55DeQgDSROnZS5Q8U04DVaZajX12F8Ng0GIc9rRDgFrZRmwE
 15F0vgAy13b2F6vHz9piDrhHdjtTiylBkhYR7N0/DYD7ez8/r4O0SLH2X8gMnmS1AO
 uoQ3BjT2bgtxwhle8W8yD5P66eItqx0qA5v03fXF552L6lL5zBGkYRakab3qT3LEc9
 bhV039CR2CVXe5YwX08ZNfFiSZrBnB8HFEuHez6tqyYWe3SWUiZdn7kwRDqXG2eY7C
 XLQf7qvbZhMSXOPGdHYYsoyx6+UpvySzdNUhQr/w4oow59/QyaKPa5+pI44VV+SaW8
 v7cxRYuods/Rw==
Date: Thu, 05 Oct 2023 13:16:32 +0000
To: dri-devel@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <20231005131623.114379-1-contact@emersion.fr>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: [Intel-gfx] [PATCH] drm/atomic-helper: relax unregistered connector
 check
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

The driver might pull connectors which weren't submitted by
user-space into the atomic state. For instance,
intel_dp_mst_atomic_master_trans_check() pulls in connectors
sharing the same DP-MST stream. However, if the connector is
unregistered, this later fails with:

    [  559.425658] i915 0000:00:02.0: [drm:drm_atomic_helper_check_modeset]=
 [CONNECTOR:378:DP-7] is not registered

Skip the unregistered connector check to allow user-space to turn
off connectors one-by-one.

See this wlroots issue:
https://gitlab.freedesktop.org/wlroots/wlroots/-/issues/3407

Previous discussion:
https://lore.kernel.org/intel-gfx/Y6GX7z17WmDSKwta@ideak-desk.fi.intel.com/

Signed-off-by: Simon Ser <contact@emersion.fr>
Cc: Ville Syrj=C3=A4l=C3=A4 <ville.syrjala@linux.intel.com>
Cc: Jani Nikula <jani.nikula@intel.com>
Cc: Lyude Paul <lyude@redhat.com>
Cc: Imre Deak <imre.deak@intel.com>
---
 drivers/gpu/drm/drm_atomic_helper.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/gpu/drm/drm_atomic_helper.c b/drivers/gpu/drm/drm_atom=
ic_helper.c
index 71d399397107..c9b8343eaa20 100644
--- a/drivers/gpu/drm/drm_atomic_helper.c
+++ b/drivers/gpu/drm/drm_atomic_helper.c
@@ -290,7 +290,8 @@ static int
 update_connector_routing(struct drm_atomic_state *state,
 =09=09=09 struct drm_connector *connector,
 =09=09=09 struct drm_connector_state *old_connector_state,
-=09=09=09 struct drm_connector_state *new_connector_state)
+=09=09=09 struct drm_connector_state *new_connector_state,
+=09=09=09 bool added_by_user)
 {
 =09const struct drm_connector_helper_funcs *funcs;
 =09struct drm_encoder *new_encoder;
@@ -339,9 +340,13 @@ update_connector_routing(struct drm_atomic_state *stat=
e,
 =09 * there's a chance the connector may have been destroyed during the
 =09 * process, but it's better to ignore that then cause
 =09 * drm_atomic_helper_resume() to fail.
+=09 *
+=09 * Last, we want to ignore connector registration when the connector
+=09 * was not pulled in the atomic state by user-space (ie, was pulled
+=09 * in by the driver, e.g. when updating a DP-MST stream).
 =09 */
 =09if (!state->duplicated && drm_connector_is_unregistered(connector) &&
-=09    crtc_state->active) {
+=09    added_by_user && crtc_state->active) {
 =09=09drm_dbg_atomic(connector->dev,
 =09=09=09       "[CONNECTOR:%d:%s] is not registered\n",
 =09=09=09       connector->base.id, connector->name);
@@ -620,7 +625,10 @@ drm_atomic_helper_check_modeset(struct drm_device *dev=
,
 =09struct drm_connector *connector;
 =09struct drm_connector_state *old_connector_state, *new_connector_state;
 =09int i, ret;
-=09unsigned int connectors_mask =3D 0;
+=09unsigned int connectors_mask =3D 0, user_connectors_mask =3D 0;
+
+=09for_each_oldnew_connector_in_state(state, connector, old_connector_stat=
e, new_connector_state, i)
+=09=09user_connectors_mask |=3D BIT(i);
=20
 =09for_each_oldnew_crtc_in_state(state, crtc, old_crtc_state, new_crtc_sta=
te, i) {
 =09=09bool has_connectors =3D
@@ -685,7 +693,8 @@ drm_atomic_helper_check_modeset(struct drm_device *dev,
 =09=09 */
 =09=09ret =3D update_connector_routing(state, connector,
 =09=09=09=09=09       old_connector_state,
-=09=09=09=09=09       new_connector_state);
+=09=09=09=09=09       new_connector_state,
+=09=09=09=09=09=09   BIT(i) & user_connectors_mask);
 =09=09if (ret)
 =09=09=09return ret;
 =09=09if (old_connector_state->crtc) {
--=20
2.42.0

