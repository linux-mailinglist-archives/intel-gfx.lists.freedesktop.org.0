Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ABB544A672
	for <lists+intel-gfx@lfdr.de>; Tue,  9 Nov 2021 06:48:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id C0A7A6E3AA;
	Tue,  9 Nov 2021 05:48:52 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E281789D4D
 for <intel-gfx@lists.freedesktop.org>; Tue,  9 Nov 2021 05:48:50 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10162"; a="213115221"
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="213115221"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Nov 2021 21:48:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.87,219,1631602800"; d="scan'208";a="588345272"
Received: from fmsmsx606.amr.corp.intel.com ([10.18.126.86])
 by fmsmga002.fm.intel.com with ESMTP; 08 Nov 2021 21:48:42 -0800
Received: from fmsmsx608.amr.corp.intel.com (10.18.126.88) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 21:48:42 -0800
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx608.amr.corp.intel.com (10.18.126.88) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Mon, 8 Nov 2021 21:48:41 -0800
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Mon, 8 Nov 2021 21:48:41 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.176)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.12; Mon, 8 Nov 2021 21:48:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lDLJ8hvPhQ7Wy4YzT4hYrFHKeAm6GinFjIW6XnCnLNh9zjMxkqmFaeVFIoBxZDx1jILD7RH5xvAs2agbuDdXjqEqlgX8D80cpbcfjaz969PuvtUziXoUovuqz8UJ+aZA1YhkuDl1FTqdoGJxowiFg0tZ4SuJJ1qsOyuo18ghEXAEXiZNXQp30h2o/AHG+MfTaO+wtPCB90kHvxO9k/0RqLzi1cfkiK7vsQgoyUV2jevjL2qnBHV5RubWF4myV1C/2UqvlRGNog+D6kC196XdyO3yOEYokWyx6wXBB0vM1mbw1rCfu8WoDo+NyBjjEo36JvsncQEI5elYTwmGl2ZkBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Sq7V9QTcg1szW1QGAKwCi/bOqUedYs1IAVdcnCodkFs=;
 b=cI8OVyVKBwoC6OoDj3TKXuT0TxX8SWrcwN1P1ttw6X4QKMlDqtXhcFMk+JEykDZass4WBmu+98UGYbyZEHN8ePhOGgckVZBllg+i06JfNOTJ03HeAfw++YLv9Ui9hmZcKB5z29th8C8sPJuPEkHO9U4DKGtdavPia1914GNaqRfRiXU431HOaYXEXsWUl0JNP9k3wBoVNRXVOTi24eSdfDxen0li5cfrLTDIIlCgM5QVPma/i5X+BYU7M/U6MYLnQ4YVBvBQrSNrXa2J1RYxxW1U+6B9+qDUKVg2LY9Z93r2Y9tNwwuumd+GlOf19LImeDWT/nxz9s3w+vGbgOFa8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Sq7V9QTcg1szW1QGAKwCi/bOqUedYs1IAVdcnCodkFs=;
 b=kF978fNE3FQsXm+aTX74cF1GwadHwdA0kAGb7E2/J1ni86SuLgrDlYm4Li3132m+1+y5B1GNAIXYnu8IEEThSw6C1gJBVfH1vps5RbzCGHp5lkMPWfDM6lPXdvtQ/jXFKunn8vz1gdC/ZoHHcBlU3fe6eNp/MiWHpBJ+4oL1cco=
Received: from SN6PR11MB3421.namprd11.prod.outlook.com (2603:10b6:805:cd::27)
 by SA0PR11MB4718.namprd11.prod.outlook.com (2603:10b6:806:98::24)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4669.11; Tue, 9 Nov
 2021 05:48:39 +0000
Received: from SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::d171:4360:5eec:8c82]) by SN6PR11MB3421.namprd11.prod.outlook.com
 ([fe80::d171:4360:5eec:8c82%6]) with mapi id 15.20.4669.016; Tue, 9 Nov 2021
 05:48:39 +0000
From: "Surendrakumar Upadhyay, TejaskumarX"
 <tejaskumarx.surendrakumar.upadhyay@intel.com>
To: "Ceraolo Spurio, Daniele" <daniele.ceraolospurio@intel.com>
Thread-Topic: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock during PXP
 suspend
Thread-Index: AQHX1JAkY0tsCQ6aGE2nZc2OEdrh5Kv5/pOAgACyzwA=
Date: Tue, 9 Nov 2021 05:48:38 +0000
Message-ID: <SN6PR11MB34214435060D405A81BBA0F1DF929@SN6PR11MB3421.namprd11.prod.outlook.com>
References: <20211108105617.3522809-1-tejaskumarx.surendrakumar.upadhyay@intel.com>
 <87h7cm79g8.fsf@intel.com>
In-Reply-To: <87h7cm79g8.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-version: 11.6.200.16
dlp-product: dlpe-windows
dlp-reaction: no-action
authentication-results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b92bc5b8-28c2-4a05-c51c-08d9a3449457
x-ms-traffictypediagnostic: SA0PR11MB4718:
x-microsoft-antispam-prvs: <SA0PR11MB4718929CFE32D3E7E0322FD2DF929@SA0PR11MB4718.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ARvVo7k9Wj8K/4f5DK1z/8JlQr9/399RmcKdCPMFKIN2mkgP7+tGOWozjg0Rn6FWlSndM99TCQxUfopAuaWy+qNbipPW5eanyjN9RFcawMn7+dJ/947310baeRrKnOur6Wg4WDa/L+kxZXfUbBMyC6491u+SzgXrSwSQjk1DuPCNR1tsuUdHLbqoo+cArwmwOJcFf7eO9Wsc6X4JhfP3p+dDNpZHPalcewC9f4eDzA40jZxkw8QylWdCnNl3x3BqlCrjHZmDtpxSOO1Tru09zRKc2ej1mw6boU6NQXztQcVdEwBhAuWgrvsiYGS9F/4Kd0uKjKUbr372z9fPss9JXoqywMtt/+Ap87zMeSSqmAxVC3cgOJb5wClZdUDMzIurMz28j9jNC5mJ1wPACbx+M6eVrAjaSH7qX4dhcQ3+yowfIfUYqXrWkG+vwQPhVJYGM24gGi5ZBlNVNhlN/QDku0ydLqaXLekQ8Dai03WIVYyo4t/bEhQMFrfsqqJL5f+aD4sIurw40JLc0NxR5AZgxHKJY49OcrGPMryvTXXj/vOqWH4uqhfY78VbF7NsefJwIxhfahVk5Ap0FM761P0T5MiopLFEzpuKgMGjwda4VIeovmBCFKE35FZX7WznGJfClwL4y550osJtmJROiW1SBxwyzs1IBVLmTrgwxaDAVOUum3kGvBFZ3FznPo5+3Ot0RVnGsmPeGW2XQIdjBALNug==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SN6PR11MB3421.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(366004)(316002)(33656002)(83380400001)(54906003)(71200400001)(76116006)(2906002)(64756008)(66946007)(66446008)(45080400002)(6636002)(508600001)(66556008)(66476007)(15650500001)(6506007)(82960400001)(9686003)(53546011)(55016002)(186003)(5660300002)(86362001)(122000001)(38100700002)(7696005)(6862004)(4326008)(8676002)(26005)(52536014)(38070700005)(8936002);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ZbXrgP+xP+xOtZV6CYVbUEqg9kDhbGkiAXuKkFvWOrA3DfErl46CWl6mwERw?=
 =?us-ascii?Q?C1I5rOwtWcWRetvadOTUD112SFPgWbuhHBDMeBVcct9U2hdV27O4eRjKL8L9?=
 =?us-ascii?Q?KwAmBGJVjlXYM85QczpFLCC/M+O7IoiG2FyzRRHr7iw7f+SeMPI8qPXlpzaN?=
 =?us-ascii?Q?QCxaLt0Rc7ZLuKhhwkxRdht5eLWZCvW8/AgFL1iocIswK6noDaE6z9dLQY5U?=
 =?us-ascii?Q?KhW8tjS44hbmX7oWIdBVz57SSGcrmEHop9oF1sZaFRm8xwBjYo+8jl9fq4ub?=
 =?us-ascii?Q?318f4SEQLqwkM2DAH5tpp86UTh0xGn3wvzrHd+Pjed2a4u4PitE8CbFwks7g?=
 =?us-ascii?Q?WRdVGCq6jFB0jsT15gkZdY9ycjT3UROaV2pthPibGYENIutONX88M1TuZ/33?=
 =?us-ascii?Q?Ninb3tkYf1a0CxZ/a0PKJF/DOoH7vlER6cgOXBDnl0mBOwtHWbOqc5bK9p59?=
 =?us-ascii?Q?qQc9a9gI7TvQAXPaF1z2zqHqaR0s5A+TsvvNC8MtJrWfGZ+9cA+Zx7rchBX1?=
 =?us-ascii?Q?+e/aJcD/Xn56EFweNT/rYiZou/2yl4+AgSr24I/MapxRdyK0emMF30/RIsV/?=
 =?us-ascii?Q?NO/W5B4tpMayF+gk8O2dP+0mgPwpavbecGfNdruVBUoVGmnRZESFmgmsJML6?=
 =?us-ascii?Q?ayi8f2dUDb+zHec7zFnc511ujXM9bVLPuY2SJF98lbLx4g3QlnFY6GDUe3ed?=
 =?us-ascii?Q?PS/ETs+m1nCRADz8S6ZnunMNh7zgfuegwa0octwofCieSjLqN6AfM3j02vld?=
 =?us-ascii?Q?d4GyzTRJOKd0/2cZ0gnXI5NdI66ANizZ7Msy9uUyQ8Y6NBjw+3Uso6/15+WM?=
 =?us-ascii?Q?9fHVCyGb4QQUQHZpNBml519695/lKexbLdEOTg7TB74LLYPT94t4xu+bpuKh?=
 =?us-ascii?Q?UIjCMuo+x+nPBqW5fdnO2v5c4LTiQ22mYcMzQbZOwDKlyl7/MFRFJk/3iD+z?=
 =?us-ascii?Q?DAPq4UKhDgyPIx1twvc2Ls+ggK+D01sVb8VL4cYtbUO+JIKXyMT9RDTtog82?=
 =?us-ascii?Q?J8ynhI74zycFGkSPetxsPi9h5liSCuaTlE+vBT/hsQQNrl18Adi/WZQ9i7AM?=
 =?us-ascii?Q?bmkKEAHM8GOjYgEPj7CuNfKImyre8wI6yc4Cquzw+9cAt6FPwoym0AuSdokA?=
 =?us-ascii?Q?1SBWzYVcv+kI4oA2h7Eph6CUe4OCUDoxkYZkx2uRVvv9+M2dzl1lb6Ke7+Vz?=
 =?us-ascii?Q?pyp6axVymHGDJvFn6zYdRUep6101m+s2zN6Gg6Mr/+zsci3gqmvAbYLgt9UW?=
 =?us-ascii?Q?+MtRuANQxBbNaZAdJp8s41YQsN+yvqOoonTBK/nAVO2p7YLBfFWFM5q9DDPC?=
 =?us-ascii?Q?9bc0z0d8pJFsCFFHJOgTaQ2OaSnQDgE1PQiv3scAMlXD3+Io0BhuFipsorvA?=
 =?us-ascii?Q?vuIolPBw3WcWMTrBCzJKFEZPROZ5fDT2KSqk6izSte1wXKwoMplaFv/c/RTU?=
 =?us-ascii?Q?QJwIhd3L5kXaRyCZ984Vo4IV6BFl7KkNRylL139E4zZxNHUiGgx69vR/kG/u?=
 =?us-ascii?Q?Uh9o+CIREuviqB48HiePYr942BemVR/80DXjUbPdYFWLNYMwAfIgofOSf5Ie?=
 =?us-ascii?Q?CRqTqDH62qOuWjeL8EaGJ+f6UQ/tnf0SsgoPfg81ZzXJ2VWBB5kb/BAq+Who?=
 =?us-ascii?Q?LKhRDfPbFQdhJtBcr5joQKVlSTjEREfcUttMGu41X6Djjtja5EMS+xdlOFww?=
 =?us-ascii?Q?MHI90PZ4zkzYNWEiiDhRM7v6r9sxpigBFXNZLcVWtUYBP2Ukce8ouMmf8OFh?=
 =?us-ascii?Q?wsMwyt9rxKv4VzaUM4yy6jea9dgtWq6Wdf97TEwI/TqyeBnnevNDQIjhDmTV?=
x-ms-exchange-antispam-messagedata-1: krN+yJ+1s4PsOw==
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SN6PR11MB3421.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b92bc5b8-28c2-4a05-c51c-08d9a3449457
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2021 05:48:38.9850 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Yl6iqw+3NOxJJmGuBhWH64WvCJNAgyzgYUa5VCnRDs1FMzdwcK0IRXid3xsYP49OjDELck0zPkQFgdQ5+i/xa0w8TF2RR2ye+saDSWajvijW4tSzoytdaq6lANd8qZglsZyrIjyCHV40V2BU1+LVPQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4718
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock during
 PXP suspend
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



> -----Original Message-----
> From: Jani Nikula <jani.nikula@linux.intel.com>
> Sent: 09 November 2021 00:37
> To: Surendrakumar Upadhyay, TejaskumarX
> <tejaskumarx.surendrakumar.upadhyay@intel.com>; intel-
> gfx@lists.freedesktop.org
> Subject: Re: [Intel-gfx] [PATCH V2] drm/i915/gt: Hold RPM wakelock during
> PXP suspend
>=20
> On Mon, 08 Nov 2021, Tejas Upadhyay
> <tejaskumarx.surendrakumar.upadhyay@intel.com> wrote:
> > selftest --r live shows failure in suspend tests when RPM wakelock is
> > not acquired during suspend.
> >
> > This changes addresses below error :
> > <4> [154.177535] RPM wakelock ref not held during HW access <4>
> > [154.177575] WARNING: CPU: 4 PID: 5772 at
> > drivers/gpu/drm/i915/intel_runtime_pm.h:113
> > fwtable_write32+0x240/0x320 [i915]
> > <4> [154.177974] Modules linked in: i915(+) vgem drm_shmem_helper fuse
> > snd_hda_codec_hdmi snd_hda_codec_realtek snd_hda_codec_generic
> > ledtrig_audio mei_hdcp mei_pxp x86_pkg_temp_thermal coretemp
> > crct10dif_pclmul crc32_pclmul ghash_clmulni_intel snd_intel_dspcfg
> > snd_hda_codec snd_hwdep igc snd_hda_core ttm mei_me ptp snd_pcm
> > prime_numbers mei i2c_i801 pps_core i2c_smbus intel_lpss_pci btusb
> > btrtl btbcm btintel bluetooth ecdh_generic ecc [last unloaded: i915]
> > <4> [154.178143] CPU: 4 PID: 5772 Comm: i915_selftest Tainted: G
> > U            5.15.0-rc6-CI-Patchwork_21432+ #1
> > <4> [154.178154] Hardware name: ASUS System Product Name/TUF
> GAMING
> > Z590-PLUS WIFI, BIOS 0811 04/06/2021 <4> [154.178160] RIP:
> > 0010:fwtable_write32+0x240/0x320 [i915] <4> [154.178604] Code: 15 7b
> > e1 0f 0b e9 34 fe ff ff 80 3d a9 89 31
> > 00 00 0f 85 31 fe ff ff 48 c7 c7 88 9e 4f a0 c6 05 95 89 31 00 01 e8
> > c0 15 7b e1 <0f> 0b e9 17 fe ff ff 8b 05 0f 83 58 e2 85 c0 0f 85 8d
> > 00 00 00 48
> > <4> [154.178614] RSP: 0018:ffffc900016279f0 EFLAGS: 00010286 <4>
> > [154.178626] RAX: 0000000000000000 RBX: ffff888204fe0ee0
> > RCX: 0000000000000001
> > <4> [154.178634] RDX: 0000000080000001 RSI: ffffffff823142b5
> > RDI: 00000000ffffffff
> > <4> [154.178641] RBP: 00000000000320f0 R08: 0000000000000000
> > R09: c0000000ffffcd5a
> > <4> [154.178647] R10: 00000000000f8c90 R11: ffffc90001627808
> > R12: 0000000000000000
> > <4> [154.178654] R13: 0000000040000000 R14: ffffffffa04d12e0
> > R15: 0000000000000000
> > <4> [154.178660] FS:  00007f7390aa4c00(0000) GS:ffff88844f000000(0000)
> > knlGS:0000000000000000
> > <4> [154.178669] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033 <4>
> > [154.178675] CR2: 000055bc40595028 CR3: 0000000204474005
> > CR4: 0000000000770ee0
> > <4> [154.178682] PKRU: 55555554
> > <4> [154.178687] Call Trace:
> > <4> [154.178706]  intel_pxp_fini_hw+0x23/0x30 [i915] <4> [154.179284]
> > intel_pxp_suspend+0x1f/0x30 [i915] <4> [154.179807]
> > live_gt_resume+0x5b/0x90 [i915]
> >
> > Changes since V1 :
> > 	- split the HW access parts in gt_suspend_late - Daniele
> > 	- Remove default PXP configs
> >
> > Signed-off-by: Tejas Upadhyay
> > <tejaskumarx.surendrakumar.upadhyay@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt_pm.c   |  7 ++++---
> >  drivers/gpu/drm/i915/pxp/intel_pxp_pm.c | 15 ++++++++++++---
> > drivers/gpu/drm/i915/pxp/intel_pxp_pm.h | 18 ++++++++++++++++--
> >  3 files changed, 32 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > index b4a8594bc46c..d4029de1c80d 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt_pm.c
> > @@ -303,7 +303,7 @@ void intel_gt_suspend_prepare(struct intel_gt *gt)
> >  	user_forcewake(gt, true);
> >  	wait_for_suspend(gt);
> >
> > -	intel_pxp_suspend(&gt->pxp, false);
> > +	intel_pxp_suspend_prepare(&gt->pxp, false);
> >  }
> >
> >  static suspend_state_t pm_suspend_target(void) @@ -328,6 +328,7 @@
> > void intel_gt_suspend_late(struct intel_gt *gt)
> >  	GEM_BUG_ON(gt->awake);
> >
> >  	intel_uc_suspend(&gt->uc);
> > +	intel_pxp_suspend(&gt->pxp);
> >
> >  	/*
> >  	 * On disabling the device, we want to turn off HW access to memory
> > @@ -355,7 +356,7 @@ void intel_gt_suspend_late(struct intel_gt *gt)
> >
> >  void intel_gt_runtime_suspend(struct intel_gt *gt)  {
> > -	intel_pxp_suspend(&gt->pxp, true);
> > +	intel_pxp_runtime_suspend(&gt->pxp);
> >  	intel_uc_runtime_suspend(&gt->uc);
> >
> >  	GT_TRACE(gt, "\n");
> > @@ -373,7 +374,7 @@ int intel_gt_runtime_resume(struct intel_gt *gt)
> >  	if (ret)
> >  		return ret;
> >
> > -	intel_pxp_resume(&gt->pxp);
> > +	intel_pxp_runtime_resume(&gt->pxp);
> >
> >  	return 0;
> >  }
> > diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> > b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> > index 23fd86de5a24..3f91996dc6be 100644
> > --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.c
> > @@ -7,8 +7,9 @@
> >  #include "intel_pxp_irq.h"
> >  #include "intel_pxp_pm.h"
> >  #include "intel_pxp_session.h"
> > +#include "i915_drv.h"
> >
> > -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
> > +void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime)
> >  {
> >  	if (!intel_pxp_is_enabled(pxp))
> >  		return;
> > @@ -23,10 +24,18 @@ void intel_pxp_suspend(struct intel_pxp *pxp, bool
> runtime)
> >  	 */
> >  	if (!runtime)
> >  		intel_pxp_invalidate(pxp);
> > +}
> >
> > -	intel_pxp_fini_hw(pxp);
> > +void intel_pxp_suspend(struct intel_pxp *pxp) {
> > +	intel_wakeref_t wakeref;
> >
> > -	pxp->hw_state_invalidated =3D false;
> > +	if (!intel_pxp_is_enabled(pxp))
> > +		return;
> > +	with_intel_runtime_pm(&pxp_to_gt(pxp)->i915->runtime_pm,
> wakeref) {
> > +		intel_pxp_fini_hw(pxp);
> > +		pxp->hw_state_invalidated =3D false;
> > +	}
> >  }
> >
> >  void intel_pxp_resume(struct intel_pxp *pxp) diff --git
> > a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> > b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> > index c89e97a0c3d0..f2cf3117ed93 100644
> > --- a/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> > +++ b/drivers/gpu/drm/i915/pxp/intel_pxp_pm.h
> > @@ -9,10 +9,15 @@
> >  #include "intel_pxp_types.h"
> >
> >  #ifdef CONFIG_DRM_I915_PXP
> > -void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime);
> > +void intel_pxp_suspend_prepare(struct intel_pxp *pxp, bool runtime);
> > +void intel_pxp_suspend(struct intel_pxp *pxp);
> >  void intel_pxp_resume(struct intel_pxp *pxp);  #else -static inline
> > void intel_pxp_suspend(struct intel_pxp *pxp, bool runtime)
> > +static inline void intel_pxp_suspend_prepare(struct intel_pxp *pxp,
> > +bool runtime) { }
> > +
> > +static inline void intel_pxp_suspend(struct intel_pxp *pxp)
> >  {
> >  }
> >
> > @@ -20,5 +25,14 @@ static inline void intel_pxp_resume(struct
> > intel_pxp *pxp)  {  }  #endif
> > +static inline void intel_pxp_runtime_suspend(struct intel_pxp *pxp) {
> > +	intel_pxp_suspend_prepare(pxp, true);
> > +	intel_pxp_suspend(pxp);
> > +}
> >
> > +static inline void intel_pxp_runtime_resume(struct intel_pxp *pxp) {
> > +	intel_pxp_resume(pxp);
> > +}
>=20
> For the casual reader, the pxp suspend/resume functions have become an
> impossible interface to use correctly without digging into the source cod=
e.
>=20
> Separate runtime suspend/resume calls *and* a suspend function with
> runtime parameter?!?

Hi Daniele, would you be ok if I add runtime arg? Please let me know what d=
o you think.

Thanks,
Tejas
>=20
> BR,
> Jani.
>=20
> >  #endif /* __INTEL_PXP_PM_H__ */
>=20
> --
> Jani Nikula, Intel Open Source Graphics Center
