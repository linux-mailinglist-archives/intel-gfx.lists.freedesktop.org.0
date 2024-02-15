Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 727D3855C85
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Feb 2024 09:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE06010E1A9;
	Thu, 15 Feb 2024 08:33:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=emersion.fr header.i=@emersion.fr header.b="co81zAfn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2D99810E1A9
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Feb 2024 08:33:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail3; t=1707986009; x=1708245209;
 bh=Qpa7XiSA4CVffCkOWCY0qCF5wujPD4gnrS+oPfXL6Vw=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=co81zAfnBC5cAO7ipK5ClMyyGkInohxIFTYLbOHlfH8qtrP2h+USoo1yuENYmdSKj
 V0iZ34Y1uHgNCAtaBAYqlvqppNsKUHswlaAy5vLY0pBf4M6CLwPqXRT7EYe8YWhVtK
 sKVZc4R3YUux+qN0zv89ShRG/4jDrWYOLJqNF60f+z6UC1ZKeZzX06EkfN6diusBxf
 WC4JMu6EdFLhVP2hYDhaAbIyqd0igxBgfunm+ugzfa6T1WhrYuHG6o3AT/D4iw3FlE
 Jqp1+voM+JXsNn0xc2ZRG/8LC45rQtRbWnuZo/aYNDVPtseTt1onxh/9s8ff6QixSb
 9dCL68X42dP8w==
Date: Thu, 15 Feb 2024 08:33:09 +0000
To: Nemesa Garg <nemesa.garg@intel.com>
From: Simon Ser <contact@emersion.fr>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Subject: Re: [RFC 0/5]  Introduce drm sharpening property
Message-ID: <8Ma-GlU3bFAuSPpFhGbYYuXQ8OeeDjMK9WiWO6KP-4pPO41fLnLrgABkRfhjHY6XlIh5u67vcEbD8ejDq7-zo5BXf-too0Pt7oTDhWCOPlU=@emersion.fr>
In-Reply-To: <20240214112457.3734871-1-nemesa.garg@intel.com>
References: <20240214112457.3734871-1-nemesa.garg@intel.com>
Feedback-ID: 1358184:user:proton
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

How much of this is Intel-specific? Are there any hardware vendors with
a similar feature? How much is the "sharpness" knob tied to Intel hardware?
