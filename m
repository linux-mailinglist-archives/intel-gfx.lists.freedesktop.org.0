Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D38154BCAF7
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Feb 2022 23:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EF5D210E16A;
	Sat, 19 Feb 2022 22:02:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 399 seconds by postgrey-1.36 at gabe;
 Sat, 19 Feb 2022 22:02:23 UTC
Received: from host24.ssl-gesichert.at (host24.ssl-gesichert.at
 [213.145.225.190])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E7D9310E16A
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Feb 2022 22:02:23 +0000 (UTC)
Received: (qmail 1538852 invoked by uid 7799); 19 Feb 2022 22:55:41 +0100
Received: by simscan 1.4.0 ppid: 1538818, pid: 1538849, t: 0.0366s
 scanners: clamav: 0.101.5/m:62/d:26439
Received: from 84-115-39-147.cable.dynamic.surfer.at (HELO ?192.168.0.15?)
 (philipp@gortan.org@84.115.39.147)
 by host24.ssl-gesichert.at with SMTP [34404]; 19 Feb 2022 22:55:41 +0100
Message-ID: <84fea452-bd9b-f059-06d1-c101a6d5a873@gortan.org>
Date: Sat, 19 Feb 2022 22:56:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Content-Language: en-US
To: intel-gfx@lists.freedesktop.org
References: <20220217152237.670220-1-imre.deak@intel.com>
From: Philipp Gortan <philipp@gortan.org>
In-Reply-To: <20220217152237.670220-1-imre.deak@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] drm/i915: Disconnect PHYs left connected by BIOS on
 disabled ports
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

On 2/17/22 16:22, Imre Deak wrote:
> BIOS may leave a TypeC PHY in a connected state even though the
> corresponding port is disabled. This will prevent any hotplug events
> from being signalled (after the monitor deasserts and then reasserts its
> HPD) until the PHY is disconnected and so the driver will not detect a
> connected sink. Rebooting with the PHY in the connected state also
> results in a system hang.
> 
> Fix the above by disconnecting TypeC PHYs on disabled ports.
> 
> Before commit 64851a32c463e5 the PHY connected state was read out even
> for disabled ports and later the PHY got disconnected as a side effect
> of a tc_port_lock/unlock() sequence (during connector probing), hence
> recovering the port's hotplug functionality.
> 
> Closes: https://gitlab.freedesktop.org/drm/intel/-/issues/5014
> Fixes: 64851a32c463 ("drm/i915/tc: Add a mode for the TypeC PHY's disconnected state")
> Cc: <stable@vger.kernel.org> # v5.16+
> Cc: José Roberto de Souza <jose.souza@intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> Reviewed-by: José Roberto de Souza <jose.souza@intel.com>

Issue seen on my Lenovo ThinkPad L14 Gen 2 with Intel TigerLake-LP GT2 
(Iris Xe) using Arch Linux, after upgrading the kernel from 5.15.3 and 
5.16.0. Bisected my way to isolate commit 64851a32 as the first bad 
commit. Applying Imre's patch onto drm-tip reliably fixes the issue for me.

Reported-and-tested-by: Philipp Gortan <philipp@gortan.org>

Thanks!
Philipp
