Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6159E3043
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 01:14:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08AC510E28A;
	Wed,  4 Dec 2024 00:14:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (1024-bit key; unprotected) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.b="h95vEHT7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sender4-pp-f112.zoho.com (sender4-pp-f112.zoho.com
 [136.143.188.112])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3836210E28A;
 Wed,  4 Dec 2024 00:14:29 +0000 (UTC)
ARC-Seal: i=1; a=rsa-sha256; t=1733271260; cv=none; 
 d=zohomail.com; s=zohoarc; 
 b=WATrzLiz9aq2R3x3LNGJQelV+mMPwI74pLDhIX4uG3KKx8XQXff2vXZlUOMVAcqfhRqJ0a4MFVdzOmmS2dFelhp7yedKbojq/Q5ZmlHn+r8zwCflpum8+47qLaAb1Bl/c+M30zDsQ8cD33VI0N9lHS3CO74pJmwf/J8RWB/fSI8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com;
 s=zohoarc; t=1733271260;
 h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To;
 bh=kMFduA2UZLHkHSBrwEPDL6sUPC2WEILAGJhJGs+BC0A=; 
 b=hI45oxiUl9PIlYv0/iBEHxUrIWnPklrHe+puGXrK6q+lScHGFP7bF+3CY/M3LKwJOUet0HS/XjULKUG99iXjf9yteRdmQbs7GnY8AjTBTvCZGTDfRmi6eQQlSl0SRGYgAED5cRH17vOnwczdDTaNDi4s8bgGY1gNlKsNmpHvlb8=
ARC-Authentication-Results: i=1; mx.zohomail.com;
 dkim=pass  header.i=collabora.com;
 spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
 dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1733271260; 
 s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
 h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
 bh=kMFduA2UZLHkHSBrwEPDL6sUPC2WEILAGJhJGs+BC0A=;
 b=h95vEHT7WNCd50e86nmcy0RTDhJhoqzcwmQWLpo3o5rDYMnbt/KfSx5w98mmbSLD
 MWp2GV5h1wmW7Y7e99ulQRBFUfIkWnLe0XfwLwaxZRm7oi0WiVlSUnhpxVeW8w51ZdR
 i8DueKM6E7zTUVmLrPe3vQ0raTudj97QI01f7HnI=
Received: by mx.zohomail.com with SMTPS id 1733271258498314.62793491642253;
 Tue, 3 Dec 2024 16:14:18 -0800 (PST)
Received: by mercury (Postfix, from userid 1000)
 id A853110604D3; Wed, 04 Dec 2024 01:14:13 +0100 (CET)
Date: Wed, 4 Dec 2024 01:14:13 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Lucas De Marchi <lucas.demarchi@intel.com>
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org, 
 Thomas =?utf-8?Q?Wei=C3=9Fschuh?= <linux@weissschuh.net>,
 chaitanya.kumar.borah@intel.com, Luca Coelho <luca@coelho.fi>
Subject: Re: [PATCH] usb: typec: ucsi: Fix connector status writing past
 buffer size
Message-ID: <6wlapsdavvauxoim2pegsbxju3sxvtebt4h2tfycobpcvco74i@jcggovw47bar>
References: <20241203200010.2821132-1-lucas.demarchi@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
 protocol="application/pgp-signature"; boundary="4vmdr4gttltcdigu"
Content-Disposition: inline
In-Reply-To: <20241203200010.2821132-1-lucas.demarchi@intel.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-1.3.1/233.118.59
X-ZohoMailClient: External
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


--4vmdr4gttltcdigu
Content-Type: text/plain; protected-headers=v1; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH] usb: typec: ucsi: Fix connector status writing past
 buffer size
MIME-Version: 1.0

Hi,

On Tue, Dec 03, 2024 at 12:00:10PM -0800, Lucas De Marchi wrote:
> Similar to commit 65c4c9447bfc ("usb: typec: ucsi: Fix a missing bits to
> bytes conversion in ucsi_init()"), there was a missing conversion from
> bits to bytes. Here the outcome is worse though: since the value is
> lower than UCSI_MAX_DATA_LENGTH, instead of bailing out with an error,
> it writes past the buffer size.
>=20
> The error is then seen in other places like below:
>=20
> 	Oops: general protection fault, probably for non-canonical address 0x891=
e812cd0ed968: 0000 [#1] PREEMPT SMP NOPTI
> 	CPU: 3 UID: 110 PID: 906 Comm: prometheus-node Not tainted 6.13.0-rc1-xe=
 #1
> 	Hardware name: Intel Corporation Lunar Lake Client Platform/LNL-M LP5 RV=
P1, BIOS LNLMFWI1.R00.3222.D84.2410171025 10/17/2024
> 	RIP: 0010:power_supply_get_property+0x3e/0xe0
> 	Code: 85 c0 7e 4f 4c 8b 07 89 f3 49 89 d4 49 8b 48 20 48 85 c9 74 72 49 =
8b 70 18 31 d2 31 c0 eb 0b 83 c2 01 48 63 c2 48 39 c8 73 5d <3b> 1c 86 75 f=
0 49 8b 40 28 4c 89 e2 89 de ff d0 0f 1f 00 5b 41 5c
> 	RSP: 0018:ffffc900017dfa50 EFLAGS: 00010246
> 	RAX: 0000000000000000 RBX: 0000000000000011 RCX: c963b02c06092008
> 	RDX: 0000000000000000 RSI: 0891e812cd0ed968 RDI: ffff888121dd6800
> 	RBP: ffffc900017dfa68 R08: ffff88810a4024b8 R09: 0000000000000000
> 	R10: 0000000000000000 R11: 0000000000000000 R12: ffffc900017dfa78
> 	R13: ffff888121dd6800 R14: ffff888138ad2c00 R15: ffff88810c57c528
> 	FS:  00007713a2ffd6c0(0000) GS:ffff88846f380000(0000) knlGS:000000000000=
0000
> 	CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
> 	CR2: 000000c0004b1000 CR3: 0000000121ce8003 CR4: 0000000000f72ef0
> 	DR0: 0000000000000000 DR1: 0000000000000000 DR2: 0000000000000000
> 	DR3: 0000000000000000 DR6: 00000000ffff07f0 DR7: 0000000000000400
> 	PKRU: 55555554
> 	Call Trace:
> 	 <TASK>
> 	 ? show_regs+0x6c/0x80
> 	 ? die_addr+0x37/0xa0
> 	 ? exc_general_protection+0x1c1/0x440
> 	 ? asm_exc_general_protection+0x27/0x30
> 	 ? power_supply_get_property+0x3e/0xe0
> 	 power_supply_hwmon_read+0x50/0xe0
> 	 hwmon_attr_show+0x46/0x170
> 	 dev_attr_show+0x1a/0x70
> 	 sysfs_kf_seq_show+0xaa/0x120
> 	 kernfs_seq_show+0x41/0x60
>=20
> Just use the buffer size as argument to fix it.
>=20
> Fixes: 226ff2e681d0 ("usb: typec: ucsi: Convert connector specific comman=
ds to bitmaps")
> Signed-off-by: Lucas De Marchi <lucas.demarchi@intel.com>

Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Also you are missing at some tags:

Reported-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
Closes: https://lore.kernel.org/all/SJ1PR11MB6129CCD82CD78D8EE6E27EF4B9362@=
SJ1PR11MB6129.namprd11.prod.outlook.com/

and considering he figured out the root cause (and there is no
better tag AFAIK):

Suggested-by: Thomas Wei=DFschuh <linux@weissschuh.net>

Greetings,

-- Sebastian

> ---
>  drivers/usb/typec/ucsi/ucsi.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
>=20
> diff --git a/drivers/usb/typec/ucsi/ucsi.c b/drivers/usb/typec/ucsi/ucsi.c
> index c435c0835744a..69caae84879e9 100644
> --- a/drivers/usb/typec/ucsi/ucsi.c
> +++ b/drivers/usb/typec/ucsi/ucsi.c
> @@ -651,7 +651,8 @@ static void ucsi_unregister_altmodes(struct ucsi_conn=
ector *con, u8 recipient)
>  static int ucsi_get_connector_status(struct ucsi_connector *con, bool co=
nn_ack)
>  {
>  	u64 command =3D UCSI_GET_CONNECTOR_STATUS | UCSI_CONNECTOR_NUMBER(con->=
num);
> -	size_t size =3D min(UCSI_GET_CONNECTOR_STATUS_SIZE, UCSI_MAX_DATA_LENGT=
H(con->ucsi));
> +	size_t size =3D min(sizeof(con->status),
> +			  UCSI_MAX_DATA_LENGTH(con->ucsi));
>  	int ret;
> =20
>  	ret =3D ucsi_send_command_common(con->ucsi, command, &con->status, size=
, conn_ack);
> --=20
> 2.47.0
>=20
>=20

--4vmdr4gttltcdigu
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmdPntIACgkQ2O7X88g7
+po82g/8Cm1ZlaQVplzBswhmtc+dXTCc3Wi6aEVs0+ihW7wSxtFp6WmFxt0oLbK4
FujrftLPH8u3mtQQEUVKOwByACL5z4+TIC7V4ndwwSiXWIFRirOjVD4sFhzzsZKz
f9pk87n82a1onvJKqmUe7KmUVXJvhtr0MKbtzVXDd9cGCqe0xi28gmsZ8arNlAuS
fBf3B11aE+bEIiiYHFgq49dIUeNk12mCAdX5Bm7Xd+Z2s8EvxbqwmSJFqVebPoFR
0N/n+/URE1g2bRsQpK5TxVCsrlvBdxOpcV69aIAppqmQa3mTbd8wvdM9fsHeQyyW
aYra1IN4tkXXb4Mc3H0FxgQ01oPD9FY/2dxiUTPgx4Lu9BxcvbklnadT8txvs9fx
4lOGiUK3if+GAJwz8+TQ7OKIJkrse086FG8Hk5yqXLHsvSp1mDsq5szwMX2yL5lm
TlsGWizRqhlHcVs8CMjlK7YaerFP87vNcSyucaEIL3shd2rOCb6CVcggBABlXdDx
10jkH3PTKyF04dTbSFBiKJGTVfar1eDINS94/Jvh5NtMzHq8HWm2hIzAIOO5PhPo
tHN65w28CANEmt6AoX82FuMD/U2nEPc4hb5YHHND6cRM96VJ0Q3pOc2Bpt5xnksO
ThvZmHEbPy5B+8EPC2ZJZO0W7w9fyzzm4me7lJDa0jjxPLmcttI=
=VOt4
-----END PGP SIGNATURE-----

--4vmdr4gttltcdigu--
