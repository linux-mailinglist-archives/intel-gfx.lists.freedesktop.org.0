Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 14F6F2A49EF
	for <lists+intel-gfx@lfdr.de>; Tue,  3 Nov 2020 16:33:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DD4F6ECDC;
	Tue,  3 Nov 2020 15:33:39 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch
 [185.70.40.131])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C1A286ECDC
 for <intel-gfx@lists.freedesktop.org>; Tue,  3 Nov 2020 15:33:38 +0000 (UTC)
Date: Tue, 03 Nov 2020 15:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail2; t=1604417616;
 bh=1bMuRqw+s68vITH66A3Y5G0x74cgdg1wN232P/5p91o=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=V6I+hwvOHg+jUoILW+hCe5JVvd62cSZfgRiQaYIVLDeUTLizdHeoWj3U7N0VHpgQH
 xob9fjob9T+FU4abd3d++0Z3GZyo1RNlIZ5WMo/+ebPpc2Pj7UqLkmE0UiHCjrESMW
 u/GCOP/O1iMNKshJFExbGWJ8uBoIullcPUXyzYyr2OWIfnm5neMRUvfShxN0bV4SLn
 t70kngsNxIUN1g3nD+knnxtAhjqUUA3cv8Lz4sDsxbJcisy84ncVBcXgQXvW0ZClDS
 7MPcDRLEc3Ip9j2WfaRKbOmLzjETznOXRe1ZPnQG8t3x3RfQMDM0rNOAVoqWC2J8J4
 xpTBT83ySfL7Q==
To: Ville Syrjala <ville.syrjala@linux.intel.com>
From: Simon Ser <contact@emersion.fr>
Message-ID: <3yJQfNKKloV3AmS-wkf18K-wE21QNvHibwGCB4xtRTNz8xEDX1-IU_knUpAO4418CVBupGOxO83TkmNy1uijqCMijWRZEzjjQFB12OMJ54M=@emersion.fr>
In-Reply-To: <20201103153026.16566-1-ville.syrjala@linux.intel.com>
References: <20201103153026.16566-1-ville.syrjala@linux.intel.com>
MIME-Version: 1.0
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
 DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
 autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
 mailout.protonmail.ch
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Include fb modidier in state dumps
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
Reply-To: Simon Ser <contact@emersion.fr>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Thanks!

Acked-by: Simon Ser <contact@emersion.fr>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
