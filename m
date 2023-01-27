Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DEEB667ECFE
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Jan 2023 19:02:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3BC4610E19B;
	Fri, 27 Jan 2023 18:02:58 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-41104.protonmail.ch (mail-41104.protonmail.ch
 [185.70.41.104])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EB53D10E19B
 for <intel-gfx@lists.freedesktop.org>; Fri, 27 Jan 2023 18:02:55 +0000 (UTC)
Date: Fri, 27 Jan 2023 18:02:23 +0000
Authentication-Results: mail-41104.protonmail.ch;
 dkim=pass (2048-bit key) header.d=emersion.fr header.i=@emersion.fr
 header.b="nZ7r7awS"
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1674842549; x=1675101749;
 bh=G3N1dUBCoS3HUBukvqJJ/tzvPtsoCbWhZtyZKVUf/Uw=;
 h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
 Message-ID:BIMI-Selector;
 b=nZ7r7awSwyh0CWD7LR7Uo8G18yAuRzK/BHVOCsJCTwZuLv48eWgTHHODREcaEqVRK
 4AXYVehhR7ffzpiV0nx/eZr78rXRozRr0v/oesPTBuYDgRQWKbeNtHuJJ8Dhtcl+yq
 y1jTt0yuURsHGOb3B3g7RllVa45/XyiDsRJ4MUtfXuKVUsJ5dY3lOU5D2qogZ3dAtv
 W6MNwOP0Z/DjpodbcuRWJlESPN7PEsXsW3U0QVJcYZZHCmcALXzXOdlp37/vksAC73
 XST6c/9eEfZnB1QQXH/PSZsAce7Gnkf39/x2odP6Gs5mYjDdWFzskWx2sqgGtGk6Qf
 3orddiMWiXAAA==
To: Thomas Zimmermann <tzimmermann@suse.de>
From: Simon Ser <contact@emersion.fr>
Message-ID: <tc_igyYrgA_B5xJ15j6H2fQ00aA6vzd4nuQ8XusqeJqWWNZDJx8fFRgBAWoWOV8L5BEhjFDMYgANfdKXLqJZ0DMcsZfy8OUHDRatj36oOXo=@emersion.fr>
In-Reply-To: <20230125200415.14123-2-tzimmermann@suse.de>
References: <20230125200415.14123-1-tzimmermann@suse.de>
 <20230125200415.14123-2-tzimmermann@suse.de>
Feedback-ID: 1358184:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [Intel-gfx] [PATCH v3 01/10] drm/client: Test for connectors
 before sending hotplug event
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
Cc: freedreno@lists.freedesktop.org, linux-samsung-soc@vger.kernel.org,
 amd-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org,
 intel-gfx@lists.freedesktop.org, javierm@redhat.com, mripard@kernel.org,
 dri-devel@lists.freedesktop.org, daniel@ffwll.ch, linux-tegra@vger.kernel.org,
 airlied@gmail.com, linux-arm-kernel@lists.infradead.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wednesday, January 25th, 2023 at 21:04, Thomas Zimmermann <tzimmermann@s=
use.de> wrote:

> Not having connectors indicates a driver bug.

Is it? What if all connectors are of the DP-MST type, ie. they are
created on-the-fly?
