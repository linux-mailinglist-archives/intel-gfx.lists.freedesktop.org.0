Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +LRHGpavxGkL2gQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 05:01:26 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C745032EEEE
	for <lists+intel-gfx@lfdr.de>; Thu, 26 Mar 2026 05:01:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3D96510E947;
	Thu, 26 Mar 2026 04:01:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hbRx6CF2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 662AC10E92F;
 Thu, 26 Mar 2026 04:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774497682; x=1806033682;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=XNOCP0gJMTP2RlMdFPV+Vv/mtVx9gkZWXMR2JRGXpWc=;
 b=hbRx6CF2w9Aq5jxYUFT8/1+XiVCOR3khZms/25do5qnpKyGoa6FAxjnb
 52/f4A4xm3Y13xPu3AX2qIBsg7o65+06z8QKbwGv+8Yn6h8xGDIJBCR3P
 mjTHVDuXdCkOfbay9AWznwyGtqDtFvHQoc16K9H4M6ZM1+YDStKPCgvzP
 lZZtWME1cYrVUbQtpaKl9ywy7dwZUYTN1ABe85PvWXYJjRxheW1P6Mhbm
 oFriP0pioFI1C22YM6epDrQ1UyGWXoQuCJMt3s9A4n639e/cDA+4oW9i/
 w0kUF6KJFjrQrZwQlqwY5xaEYfz/yUQwd9oBZX/LYE0rIzmjHFz7NHa3f Q==;
X-CSE-ConnectionGUID: NSLugxxHQ/6tV4Cvev35tg==
X-CSE-MsgGUID: sl5ZHyZ2QFmiQMsOAljQ5Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11740"; a="75434818"
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="75434818"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 21:01:22 -0700
X-CSE-ConnectionGUID: 3EybplZ9REmVtnPB7W49mQ==
X-CSE-MsgGUID: hdfqCuGZRYGkp14MOcD/ig==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,141,1770624000"; d="scan'208";a="224820718"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Mar 2026 21:01:22 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 21:01:21 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 25 Mar 2026 21:01:21 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 25 Mar 2026 21:01:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fU70CzjZXUFX6BR8Nm0DucUoqFDEq6NVDdkAwqtbszDGaHCPXuANhQW0nPe8iAA2z0VLgSVIVvgm+H4fcAmHO1Q4j90fRYBBrJ4L94yVOKQPMlKIEFeAHSakPbFEh4Qmw95/zSlRh/mXmH/K0Dl5bu4dlmDawuAVbFrl3NaM7GDxcUbK4JGZjddF22rlQRgtkJFw7La09HOhSbTdjig00HU0LWewYzQDEe16AY/MzdE8VjBbvakyQLh/ft9jxCp0gg8Vu+3UFRqdiksyGW6dKnMt36ptGtuZddwERnmNZSPdwBMNRj5XpQNuJDgoyDXfnIoNMheZTxM/XxcWfYYx2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=3LbGdnCMQhfDJS5peAAr2eOGfjSNhwrM9coJvxnvJ2k=;
 b=h8uzNM8ujXrwSsdjk1YCn4dDbbLrTTOTqMFRZkNgIMxN2oMz3d3JW5FxJVwx0x9ti2ZQqHGqLv1/ZfpVEE3M/4F3EqxDTMmuS7dEmQ2e2uSoleoHFYrs+kdqW97txe0yGUxuHrTVNANA8BZ9j/00ChDA76gzsXWDzK/jhH4+fB5nV/Ckx/diTlZF/w9BPooyUHFjM7f6/xdMP0OjlnBLmnfgdxG7Xlw2rbTF5MrfDVyUHEyMBesWta3M2KrQSSmP8UCYy3DpqYsonSXWeCCclmMr7i1B73GsmxeYsplT6nwcLgUnZU8BlsdXq9ENfheqJZJqfDgaLT4+qCDQtz6R7w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by DSSPR11MB9644.namprd11.prod.outlook.com
 (2603:10b6:8:374::14) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.19; Thu, 26 Mar
 2026 04:01:19 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::308:3508:f7cd:9717%4]) with mapi id 15.20.9745.019; Thu, 26 Mar 2026
 04:01:19 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: =?iso-8859-1?Q?Ville_Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "S,
 Sowmiya" <sowmiya.s@intel.com>, "Shankar, Uma" <uma.shankar@intel.com>,
 "Sharma, Swati2" <swati2.sharma@intel.com>, "Borah, Chaitanya Kumar"
 <chaitanya.kumar.borah@intel.com>, "Murthy, Arun R" <arun.r.murthy@intel.com>
Subject: RE: [PATCH v3 23/26] drm/i915/writeback: Initialize writeback encoder.
Thread-Topic: [PATCH v3 23/26] drm/i915/writeback: Initialize writeback
 encoder.
Thread-Index: AQHcvEfGabV6+n7QMku0NoOcPdb7vrW/NhkAgAD6lmA=
Date: Thu, 26 Mar 2026 04:01:19 +0000
Message-ID: <DM3PPF208195D8D26777E5889415A75A519E356A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260325110744.1096786-1-suraj.kandpal@intel.com>
 <20260325110744.1096786-24-suraj.kandpal@intel.com>
 <acPcYs-LZiKRPDdd@intel.com>
In-Reply-To: <acPcYs-LZiKRPDdd@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|DSSPR11MB9644:EE_
x-ms-office365-filtering-correlation-id: f4b62d2f-0c5e-40f7-6cc9-08de8aec55f7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|18002099003|22082099003|56012099003;
x-microsoft-antispam-message-info: k3zodk4TDtMHGQkZCUP6eZuPEQEwj3aKZlopvpm7rKdF7+TfCyDbWXoFReZABRZApvenHPU87az7brVWEGVWUd47CjXc3Tknb+nNLQr4LVDoDReh8vusba1cvJ4ik7EFKTwrKNRaSEInh4BPamiuI7tdgH8Rd4xVKFdyKRqPP/jnxe0lCiE5zy1d8jaMj7H2r0Vtf9zZwUUFB4ybZkCsy0DFn5DyBzsAPP1X7C0g25VdV9Fd3mtay86sI3v9WdFWOumcZUpkiApup4Lx9/90TW4ApIUA5vessDxwvSm2qESQE4ERVb/5VlNCFI9ZCjENBJcKe+mE0Axhh/EsZU7AjqXp+PrYqg9DjS8/J35GGdNf0R4uW4OCzegCzIzkiQEJ05SD0z1v2/l4L57lhGbqyJOBVTNk3gl0kl8+GJb+8DOwp4x6ULZe+QD5MWFT6IW0ybwnNsiGQhFM+QgxqiDtoq8qFLNekGImVeeYgeOQsjWRolCmJLRHD5GFDL09WQHoAh6kD1Aumkc2wlfTLfkVZf26l1/XCU/L9Sh7973lg4vGqD11+DYfQ8z5ZcXAuMBTTNtYLBAs0Fwv9Nhl1ddnbCDgyj86Zr21LZQ603mggYx9/mWMq/yDm/wsJGurADE7xHDRDFHLwehFHwNZJL9QmarfEOit8q6Zp6lah3hskEFR+4rpPO4soC6JB6YNLogt5yr7hSae1NuKBGocdc3WMeajv+IzgvbinRYAULGjrB+DFx0Nd/8Sj1p0mvKNtn9fMaJH95aMhJYUBf1QZ09beblaaM8lMwexO+UscKyElfU=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(18002099003)(22082099003)(56012099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?0SriY/iMraH6zQnqoedj3kt/nTehUxTWKg8tEyOoDx2WugYHuV2kUtpeuo?=
 =?iso-8859-1?Q?uWgQOBF16n2mNi++gx5bkG2a/jUeok2Y7suiU+agQYHXox/Vf4a2jWRli8?=
 =?iso-8859-1?Q?8JXs91w7sE7jzm3nmHC4eJT2I9C6S6wdrInaAB/+AzylcE4LbDWKhZ2cxZ?=
 =?iso-8859-1?Q?oHHecOSbIj+Nnqd4Jar05m+LPbVK+DVJJJIdgAHXXd440/NvFZaohgavdz?=
 =?iso-8859-1?Q?hLd41p+BGPXVhA6SAZJTWYk76jf8Q3XC9KT2btAxuDwXZ5vPdwmb5Cvaue?=
 =?iso-8859-1?Q?zOqGtJtMR7YFDm5F783j+NOCyACJvNCp/weWoQiSLoYxKuODp52wH4eUkp?=
 =?iso-8859-1?Q?sCqyAUUX46AOGSBKVNvgkhzse4LrLCK8T/pVR2j+PmRDr/DazaATNA5qof?=
 =?iso-8859-1?Q?Kaelk5CmhtcqWns3YzNF/G/TkzgcIn+Z86wg2e/AmPxmHl8cfa9HpWD/wa?=
 =?iso-8859-1?Q?Vs6IzdogA3UaV9tCOQ2bUFmwalO4rW2VQ58Wf8F0pKpz7h/QvJcD8WJdSr?=
 =?iso-8859-1?Q?lVAaoosOsXKmr/izpqm0c/CmOoeIDupVCToxO1BqdozHsSGYeYSolHtErc?=
 =?iso-8859-1?Q?8PS+NmMmiUPmttPwLrDurgrRB5pRQyUPjI2doGLNEUiwdLUNXQ8UurLAKf?=
 =?iso-8859-1?Q?wjr6ILrG20+fmvM5jyQtnZF2kqRiw+m4VNVcD7VHW1KoInlnRp6zedsfNv?=
 =?iso-8859-1?Q?Bed2yxQ8/t/5S23rItf1TE821Cio0REo7nJeR4BZsqAB/U6vnXCIF0RRJS?=
 =?iso-8859-1?Q?L97Tf2WppP5pSCg61ZwK1897lZjddgJ3/clwzyKTdCu9dFAoITHl+Lq8l8?=
 =?iso-8859-1?Q?zr9hDIv4u6ZoM5kcYnRHvf1QzKnSavKIR2ifo7hNb1EtBpKvEsYuXhMs9i?=
 =?iso-8859-1?Q?OEb/Tm6yf4z+Nf2uYPM81BSGyQnXyA/a/l66njYHJGzockON5QIDAuCO5G?=
 =?iso-8859-1?Q?X4NcP9fuEplqbU7JNlEos2Luo6Ooe3B21v6xN3SsBdVuWHpdn5uv0Vfaew?=
 =?iso-8859-1?Q?yO0Ih4c+rRpWniwQgTuI9HkC5/06rJIoE/AeILHI6M2wBqvBcamAGD8aKJ?=
 =?iso-8859-1?Q?vmTMQj89x+2RSgQqEYuiB32666jd6XgVUqw2+cXuYYYarK+ih8R1VA9L+J?=
 =?iso-8859-1?Q?OOzXWozd/8lmC2BgbseYNs24hjtROWM4MEnqHL4NT8fFUJ+vhaWMQC1SQF?=
 =?iso-8859-1?Q?fzZTp6CTf7wF+Ju1RiFPDIaCJ6Rz00tAIHzHZWdkODszq2578TmlKsOzkT?=
 =?iso-8859-1?Q?eOaAopG6xXe7yGX1TOTrLwZ58X4TandVuUC10yCi0kwUtR9BQqgZxn/SwH?=
 =?iso-8859-1?Q?yBWrXsLf+MHqi+9EYYqDljSWUAuZC6uOuubKlZNW+kaNvqJkboUM7U7jcC?=
 =?iso-8859-1?Q?kT3jfdGgxf7xGBr8nhAE5KW28rOvoUxdRk9xkkG9vr3E9a+AFMUp7TW1kf?=
 =?iso-8859-1?Q?Feo9Dr0f6iRgtOMpS5VTKW00UGh0cpnY84ojgEP264i4D2247h+PdIlK6A?=
 =?iso-8859-1?Q?bfRh17lsxojA15iWE5gAKU30wowkHEsKDbBpHH3VgK7pTiG3u5fjAxZRXa?=
 =?iso-8859-1?Q?zOlBs2M01KSLbFs69IJGuRpk4hLuXz6wHUQ2ZqpwnZSwMK09bWMVRsJFT2?=
 =?iso-8859-1?Q?Kb7d7ZIA58eV7qiKefWMFy6lnqGchd/3Scs+W/Xt6STyEdHf+jKqznu9qy?=
 =?iso-8859-1?Q?JeZKgYy0VVgjprHrWZVcOQIH6rhWxACEWzQjGfe0cF15D3OuQTopUVZXfZ?=
 =?iso-8859-1?Q?qRwFQY2Wn9vJPkMSwASir/t5rbzRnNwyGEBabRgJ08pJX1fGUa7BEWSA2g?=
 =?iso-8859-1?Q?TDgIrb5Gyg=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Cvu5EbJCWUQK/aAYZsteLkRoUWpmLnMD1wmWwk7m0Z6q6hwos6DBY6uXN3mAAebMeyNmLtQ7ZzfphCcX/8pumHodXE+E14wnBKplLIOmRyVqMlsyfqszcqdjhhfvYYUm9mbDWzXEZB9W0XcllnDOeC4WTAwpNCot5LvUcenGFPSQLJwN9amp0a9qRB4cnK3nWOwfEueKaiFc35Bawv5ha0FqVWMDsvDtyNP/W8t3w2klHQBA959FNfB6D1Pul1a1yoCgPkR1YeBUp9OUFwStPp7UP7UIKE/jJ0pokOWXN1pNsoG20NCZ58REvmBad96POnXCFn7JrsEmOpH0IeUMUA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f4b62d2f-0c5e-40f7-6cc9-08de8aec55f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Mar 2026 04:01:19.1994 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yB7nAu/vwrFp7RuuO1MBqHUyBx1itgIG9XI7XRBFrAko8p+54JDyaaV9tqwbqggLE5UyU6ZRPu5Ysi9x+cpktQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DSSPR11MB9644
X-OriginatorOrg: intel.com
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C745032EEEE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

> Subject: Re: [PATCH v3 23/26] drm/i915/writeback: Initialize writeback
> encoder.
>=20
> On Wed, Mar 25, 2026 at 04:37:41PM +0530, Suraj Kandpal wrote:
> > Call the init function to initialize the writeback encoder only for
> > ADLP.
>=20
> Why only for ADLP?

The plan is to enable it for ADLP let the bugs come in fix them,
Then enable for each gen along with any WA's introduced. Since Writeback
has been along for a long time and we are just starting to implement it.
So I don't want the whole CI being polluted because of this activity.

Regards,
Suraj Kandpal

>=20
> >
> > Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 3 +++
> >  1 file changed, 3 insertions(+)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 4cc3e0779e8a..b4cf7153b7c8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -8030,6 +8030,9 @@ void intel_setup_outputs(struct intel_display
> *display)
> >  		intel_dvo_init(display);
> >  	}
> >
> > +	if (DISPLAY_VER(display) =3D=3D 13)
> > +		intel_writeback_init(display);
> > +
> >  	for_each_intel_encoder(display->drm, encoder) {
> >  		encoder->base.possible_crtcs =3D
> >  			intel_encoder_possible_crtcs(encoder);
> > --
> > 2.34.1
>=20
> --
> Ville Syrj=E4l=E4
> Intel
