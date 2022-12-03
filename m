Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 800196414DD
	for <lists+intel-gfx@lfdr.de>; Sat,  3 Dec 2022 09:06:11 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFE4410E18F;
	Sat,  3 Dec 2022 08:06:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 307 seconds by postgrey-1.36 at gabe;
 Sat, 03 Dec 2022 08:06:04 UTC
Received: from mta-202a.earthlink-vadesecure.net
 (mta-202b.earthlink-vadesecure.net [51.81.232.241])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EDF810E18F
 for <intel-gfx@lists.freedesktop.org>; Sat,  3 Dec 2022 08:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; bh=mMet2PB3YuJbp7jrGh6gHHBa6a3iPYkJETT0uf
 ELa/A=; c=relaxed/relaxed; d=earthlink.net; h=from:reply-to:subject:
 date:to:cc:resent-date:resent-from:resent-to:resent-cc:in-reply-to:
 references:list-id:list-help:list-unsubscribe:list-subscribe:list-post:
 list-owner:list-archive; q=dns/txt; s=dk12062016; t=1670054446;
 x=1670659246; b=MNrYfhWD6TO3+iMYRzQAh38fsTVx3M4lJ1La4XWGx/2tsmuemncF89X
 M++Qtd2GxvoYiZmqbumxwcHpm2zdoqWbX3BsHNLtOcoYC3HT+hvMjakMMBXyaqMiMw7HzoN
 QwFoi02r7Qm9w7z9TgBD9224aFhap6YFAbHykXMwpW/dV9qI/ayuExyTbE5eKsBcK9MdmJX
 4TWJ5UhmWzsRxcEogT4PaufrMzc2uyLQSy+8KSdrnfSPhKX3ARSflnhVderBPWZqGn3pGUq
 aP+vMflnd+bTlb9sqQh9nhjjrolKAdy7aVswnHP2AGHO29QpspdBT1Wgi5Z1+Pb5Lo+GKG9
 J9Q==
Received: from [192.168.0.11] ([24.50.25.171])
 by smtp.earthlink-vadesecure.net ESMTP vsel2nmtao02p with ngmta
 id 463ef17d-172d39ab89a472f6; Sat, 03 Dec 2022 08:00:46 +0000
To: intel-gfx@lists.freedesktop.org
From: Felix Miata <mrmazda@earthlink.net>
Organization: less than infinite
Message-ID: <f5909f6f-4b2f-72d6-08e2-a0e454a1cd1a@earthlink.net>
Date: Sat, 3 Dec 2022 03:00:44 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 SeaMonkey/2.53.14
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Authentication-Results: earthlink-vadesecure.net;
 auth=pass smtp.auth=jdcpa@earthlink.net smtp.mailfrom=mrmazda@earthlink.net;
Subject: [Intel-gfx] No Mesa DRI Intel 945G in Debian Bookworm since Feb.
 2022 package change
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

From libgl1-mesa-dri:amd64 changelog:
mesa (22.0.0~rc2-1) experimental; urgency=medium

  * New upstream release candidate.
  * path_max.diff: Refreshed.
  * rules: Drop classic drivers (r100, r200, nouveau_vieux, i915, i965).

 -- Timo Aaltonen <t jaalton a t debian o org>  Thu, 17 Feb 2022 22:04:03 +0200

# xdriinfo
libGL error: MESA-LOADER: failed to open i915: /usr/lib/dri/i915_dri.so: cannot open shared object file: No such file or directory (search paths /usr/lib/x86_64-linux-gnu/dri:\$${ORIGIN}/dri:/usr/lib/dri, suffix _dri)
libGL error: failed to load driver: i915
Screen 0: swrast

# pinxi -GSaz --vs --zl --hostname
pinxi 3.3.23-05 (2022-11-07)
System:
  Host: gx62b Kernel: 5.19.0-2-amd64 arch: x86_64 bits: 64 compiler: gcc
    v: 11.3.0 parameters: root=LABEL=<filter> ipv6.disable=1 net.ifnames=0
    biosdevname=0 plymouth.enable=0 noresume mitigations=auto consoleblank=0
  Desktop: Trinity v: R14.0.13 tk: Qt v: 3.5.0 info: kicker wm: Twin v: 3.0
    vt: 7 dm: 1: TDM 2: XDM Distro: Debian GNU/Linux bookworm/sid
Graphics:
  Device-1: Intel 82945G/GZ Integrated Graphics vendor: Dell driver: i915
    v: kernel arch: Gen-3.5 process: Intel 90nm built: 2005-06 ports:
    active: DVI-D-1,VGA-1 empty: none bus-ID: 00:02.0 chip-ID: 8086:2772
    class-ID: 0300
  Display: x11 server: X.Org v: 1.21.1.4 driver: X: loaded: modesetting
    dri: swrast gpu: i915 display-ID: :0 screens: 1
  Screen-1: 0 s-res: 3600x1200 s-dpi: 120 s-size: 762x254mm (30.00x10.00")
    s-diag: 803mm (31.62")
  Monitor-1: DVI-D-1 pos: primary,left model: NEC EA243WM serial: <filter>
    built: 2011 res: 1920x1200 hz: 60 dpi: 94 gamma: 1.2
    size: 519x324mm (20.43x12.76") diag: 612mm (24.1") ratio: 16:10 modes:
    max: 1920x1200 min: 640x480
  Monitor-2: VGA-1 pos: right model: Dell P2213 serial: <filter> built: 2012
    res: 1680x1050 hz: 60 dpi: 90 gamma: 1.2 size: 473x296mm (18.62x11.65")
    diag: 558mm (22") ratio: 16:10 modes: max: 1680x1050 min: 720x400
  API: OpenGL v: 4.5 Mesa 22.2.4 renderer: llvmpipe (LLVM 15.0.5 128 bits)
    direct render: Yes

In Bullseye:
...
  API: OpenGL v: 1.4 Mesa 20.3.5 renderer: Mesa DRI Intel 945G
    direct render: Yes
# xdriinfo
Screen 0: i915

What are Bookworm users supposed to do to make Mesa DRI work correctly
now that i915_dri.so is missing? Did it get moved to some other .deb
I can't ID? I don't think Crocus is supposed to work on Gen3. At least,
export MESA_LOADER_DRIVER_OVERRIDE=crocus in /etc/X11/Xsession.d/10-crocus.sh
doesn't help.

In openSUSE Tumbleweed in 22.2.4 i915 is still included in its Mesa-dri
package, and Mesa DRI Intel 945G is working as expected.
-- 
Evolution as taught in public schools is, like religion,
	based on faith, not based on science.

 Team OS/2 ** Reg. Linux User #211409 ** a11y rocks!

Felix Miata
