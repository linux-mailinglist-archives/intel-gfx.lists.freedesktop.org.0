Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id B538074CE55
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Jul 2023 09:27:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3895C10E105;
	Mon, 10 Jul 2023 07:27:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-4018.proton.ch (mail-4018.proton.ch [185.70.40.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7A4010E105
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Jul 2023 07:27:56 +0000 (UTC)
Date: Mon, 10 Jul 2023 07:27:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1688974073; x=1689233273;
 bh=Jm/CFrxgapQZZURvCaen2BEhBcPexgU67bZ9Uz2ZLDw=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=tPaUUE5j4iy2jIpotIu7zHq+4q905V9Oo3jOtUWksCCQOo91YcTSg25bjbQT4QCtx
 iQ9sFvZdCA+y8YyYjawi4RgHQBrEm+6DWDyeViDt4C9yw+aBZ0+B+gcwuw1blbQJkT
 53dgJv7eeI07JsfU2X/7l6oRfrhFIn2Nf4JivLogb6fHALh4zC13mDet10f5CHg5Sm
 qBYGHFLiER2TSvenXDxDzBRBEFVuVfWC4kryky/vhfbQyh+3QdQa3k8s4teecORQOl
 JW0Y1YbiXgwJmd58dOqWnVjjfBOCxAGZ7IKN0xag34N+0wxo7Brm3ympMxBm+EAbLj
 8JSbNuC8bVSUw==
To: intel-gfx@lists.freedesktop.org
From: Simon Ser <contact@emersion.fr>
Message-ID: <ZR-8c31L0kVNylnQHTP_MlcPiINr0Zd22HZA8DlKV8BuhUqanJ5YiWsUqavQr3AXN2mD20QWOQfrQc_tE4Dju8B-KDGEVh5Dc-9aLqpJbv4=@emersion.fr>
In-Reply-To: <20230623094229.120264-1-contact@emersion.fr>
References: <20230623094229.120264-1-contact@emersion.fr>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v2] i915/display/hotplug: use
 drm_kms_helper_connector_hotplug_event()
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
 Lucas De Marchi <lucas.demarchi@intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Any news about this patch?
