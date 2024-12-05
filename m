Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 22B579E4A3E
	for <lists+intel-gfx@lfdr.de>; Thu,  5 Dec 2024 01:02:01 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BDEBA10ED93;
	Thu,  5 Dec 2024 00:01:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Y8jFGwIb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5501910ED8F;
 Thu,  5 Dec 2024 00:01:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733356918; x=1764892918;
 h=message-id:subject:from:reply-to:to:cc:date:in-reply-to:
 references:content-transfer-encoding:mime-version;
 bh=CNeZ5s1eqwjcGJB9Nhj6BWTc/jzEoYh6q3x3074WUNE=;
 b=Y8jFGwIbAk5pRYp8dSFAWEhFM5hMz/N8ITAJMcPISCXMcKb22NybL3NF
 H/3/XdaFJOHcprRHrx/2J7ygnNUpVv+ICvv+yuBjEgrj/8ROvcqZXFNW5
 y79+74pFWk4pi9FbFiF1kmzoUV2Wlha5EkqyJWFpiWufnZTJeXySZ2fyF
 LG25KMAtPJb3x56bAUnHHDCG6LWjeFRiZBHELkgz/RbixfSTminPtkHkI
 ipRS9rqRjRGyCFTzog1/BroK812LQ82hubWH5kVmm4KXpDwtWquE8ycQM
 qPirumaIpn+jiQ1gR0kQJtbcVXWOAJpKPaM0OYifzsSuhN9ErrfpeECW/ w==;
X-CSE-ConnectionGUID: 91EvhOxHRRWIIxfuCUBxXA==
X-CSE-MsgGUID: 69g/mGCwQpCZ/53vGqFf7Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11276"; a="37310512"
X-IronPort-AV: E=Sophos;i="6.12,208,1728975600"; d="scan'208";a="37310512"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 16:01:58 -0800
X-CSE-ConnectionGUID: d3j5MYInQTCQvVNu/k8Rqg==
X-CSE-MsgGUID: 5/6bvRtCRTel9PuOPptgyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,208,1728975600"; d="scan'208";a="98995019"
Received: from tfalcon-desk.amr.corp.intel.com ([10.124.220.48])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 16:01:58 -0800
Message-ID: <263f2ac1e9b6f33ce724da28927b9acf84cb9a7a.camel@linux.intel.com>
Subject: Re: [PATCH] usb: typec: ucsi: Fix connector status writing past
 buffer size
From: Todd Brandt <todd.e.brandt@linux.intel.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>, linux-usb@vger.kernel.org
Cc: linux-kernel@vger.kernel.org, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Heikki Krogerus
 <heikki.krogerus@linux.intel.com>,  intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, Thomas =?ISO-8859-1?Q?Wei=DFschuh?=
 <linux@weissschuh.net>, chaitanya.kumar.borah@intel.com, Luca Coelho
 <luca@coelho.fi>
Date: Wed, 04 Dec 2024 16:00:51 -0800
In-Reply-To: <20241203200010.2821132-1-lucas.demarchi@intel.com>
References: <20241203200010.2821132-1-lucas.demarchi@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
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
Reply-To: todd.e.brandt@linux.intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi all, I opened a bugzilla here about this issue, this commit broke
all our lunar lake machines in boot (5 in total):

https://bugzilla.kernel.org/show_bug.cgi?id=3D219562

I have tested this patch and it appears to have fixed things. I'm about
to test on all machines with a full run of stress testing of S2idle to
be absolutely sure. But you can add me as tested by.

Tested-By: Brandt, Todd E <todd.e.brandt@linux.intel.com>


On Tue, 2024-12-03 at 12:00 -0800, Lucas De Marchi wrote:
> Similar to commit 65c4c9447bfc ("usb: typec: ucsi: Fix a missing bits
> to
> bytes conversion in ucsi_init()"), there was a missing conversion
> from
> bits to bytes. Here the outcome is worse though: since the value is
> lower than UCSI_MAX_DATA_LENGTH, instead of bailing out with an
> error,
> it writes past the buffer size.
>=20
> The error is then seen in other places like below:
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Oops: general protection =
fault, probably for non-canonical
> address 0x891e812cd0ed968: 0000 [#1] PREEMPT SMP NOPTI
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CPU: 3 UID: 110 PID: 906 =
Comm: prometheus-node Not tainted
> 6.13.0-rc1-xe #1
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Hardware name: Intel Corp=
oration Lunar Lake Client
> Platform/LNL-M LP5 RVP1, BIOS LNLMFWI1.R00.3222.D84.2410171025
> 10/17/2024
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RIP: 0010:power_supply_ge=
t_property+0x3e/0xe0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Code: 85 c0 7e 4f 4c 8b 0=
7 89 f3 49 89 d4 49 8b 48 20 48 85
> c9 74 72 49 8b 70 18 31 d2 31 c0 eb 0b 83 c2 01 48 63 c2 48 39 c8 73
> 5d <3b> 1c 86 75 f0 49 8b 40 28 4c 89 e2 89 de ff d0 0f 1f 00 5b 41
> 5c
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RSP: 0018:ffffc900017dfa5=
0 EFLAGS: 00010246
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RAX: 0000000000000000 RBX=
: 0000000000000011 RCX:
> c963b02c06092008
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RDX: 0000000000000000 RSI=
: 0891e812cd0ed968 RDI:
> ffff888121dd6800
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0RBP: ffffc900017dfa68 R08=
: ffff88810a4024b8 R09:
> 0000000000000000
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0R10: 0000000000000000 R11=
: 0000000000000000 R12:
> ffffc900017dfa78
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0R13: ffff888121dd6800 R14=
: ffff888138ad2c00 R15:
> ffff88810c57c528
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0FS:=C2=A0 00007713a2ffd6c=
0(0000) GS:ffff88846f380000(0000)
> knlGS:0000000000000000
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CS:=C2=A0 0010 DS: 0000 E=
S: 0000 CR0: 0000000080050033
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0CR2: 000000c0004b1000 CR3=
: 0000000121ce8003 CR4:
> 0000000000f72ef0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DR0: 0000000000000000 DR1=
: 0000000000000000 DR2:
> 0000000000000000
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0DR3: 0000000000000000 DR6=
: 00000000ffff07f0 DR7:
> 0000000000000400
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0PKRU: 55555554
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0Call Trace:
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 <TASK>
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ? show_regs+0x6c/0x80
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ? die_addr+0x37/0xa0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ? exc_general_protection=
+0x1c1/0x440
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ? asm_exc_general_protec=
tion+0x27/0x30
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ? power_supply_get_prope=
rty+0x3e/0xe0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 power_supply_hwmon_read+=
0x50/0xe0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 hwmon_attr_show+0x46/0x1=
70
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 dev_attr_show+0x1a/0x70
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sysfs_kf_seq_show+0xaa/0=
x120
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 kernfs_seq_show+0x41/0x6=
0
>=20
> Just use the buffer size as argument to fix it.
>=20
> Fixes: 226ff2e681d0 ("usb: typec: ucsi: Convert connector specific
> commands to bitmaps")
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>
> ---
> =C2=A0drivers/usb/typec/ucsi/ucsi.c | 3 ++-
> =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/usb/typec/ucsi/ucsi.c
> b/drivers/usb/typec/ucsi/ucsi.c
> index c435c0835744a..69caae84879e9 100644
> --- a/drivers/usb/typec/ucsi/ucsi.c
> +++ b/drivers/usb/typec/ucsi/ucsi.c
> @@ -651,7 +651,8 @@ static void ucsi_unregister_altmodes(struct
> ucsi_connector *con, u8 recipient)
> =C2=A0static int ucsi_get_connector_status(struct ucsi_connector *con,
> bool conn_ack)
> =C2=A0{
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u64 command =3D UCSI_GET_=
CONNECTOR_STATUS |
> UCSI_CONNECTOR_NUMBER(con->num);
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0size_t size =3D min(UCSI_GET_C=
ONNECTOR_STATUS_SIZE,
> UCSI_MAX_DATA_LENGTH(con->ucsi));
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0size_t size =3D min(sizeof(con=
->status),
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 UC=
SI_MAX_DATA_LENGTH(con->ucsi));
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
> =C2=A0
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D ucsi_send_command=
_common(con->ucsi, command, &con-
> >status, size, conn_ack);

