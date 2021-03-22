Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 006A4343C5E
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Mar 2021 10:10:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1C72089E01;
	Mon, 22 Mar 2021 09:10:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 439 seconds by postgrey-1.36 at gabe;
 Mon, 22 Mar 2021 08:41:40 UTC
Received: from eahe.aehallh.com (eahe.aehallh.com [50.116.20.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D7ED589C86
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 08:41:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by eahe.aehallh.com (Postfix) with ESMTP id 871C02FFE9
 for <intel-gfx@lists.freedesktop.org>; Mon, 22 Mar 2021 03:34:20 -0500 (CDT)
X-Virus-Scanned: Debian amavisd-new at eahe.aehallh.com
Received: from eahe.aehallh.com ([127.0.0.1])
 by localhost (eahe.aehallh.com [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id gsyKEsiIy7xe for <intel-gfx@lists.freedesktop.org>;
 Mon, 22 Mar 2021 03:34:19 -0500 (CDT)
Received: by eahe.aehallh.com (Postfix, from userid 1000)
 id D8D9E30003; Mon, 22 Mar 2021 03:34:19 -0500 (CDT)
Date: Mon, 22 Mar 2021 03:34:19 -0500
From: "Zephaniah E. Loss-Cutler-Hull" <warp@aehallh.com>
To: intel-gfx@lists.freedesktop.org
Message-ID: <20210322083419.GA3084@aehallh.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210317184901.4029798-1-imre.deak@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Mailman-Approved-At: Mon, 22 Mar 2021 09:10:08 +0000
Subject: Re: [Intel-gfx] drm/i915: Fix DP LTTPR link training mode
 initialization
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Acked-By: Zephaniah E. Loss-Cutler-Hull <zephaniah@gmail.com>
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
