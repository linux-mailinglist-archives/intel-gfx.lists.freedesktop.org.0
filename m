Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D88D57F513
	for <lists+intel-gfx@lfdr.de>; Sun, 24 Jul 2022 14:30:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB216113586;
	Sun, 24 Jul 2022 12:30:18 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81509113586
 for <intel-gfx@lists.freedesktop.org>; Sun, 24 Jul 2022 12:30:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658665817; x=1690201817;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CMinuH8oYlPepdaugeGM+3NGiUcyNJ5XVz6gdCMENUw=;
 b=fPPPStelDN7hnbNnYq0B1P76gTnC97MXOoVmeTBaoIOGsfvm27duHj6n
 UX3NcJOLqEBORrU+cv2UOS+IWdAb47QI0IwqRl2Z973UyWNKoZi8zY5aF
 MOoxm2b7f7uSKUyeAJEjwHGzSuqYhoqcjzm4DEEad0RL3Fty3NqzGnhO6
 pxTn9sdhyb8SnKMaUNiDbe3y9MTUQ2Wn3Xg+Wi0WrXve72lvo/jDOZ971
 KWNJcfW8egwncf9mjky/wGzO/4crYOHAxoq/DORPB/X5bnxVO9UmhfEzE
 d5vA0XF59NR4Y3NahoEOiUT2ZAlay/S1sONFA6/mPEe+D+OwNaAD7OF1e g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10417"; a="274399875"
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="274399875"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jul 2022 05:30:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,190,1654585200"; d="scan'208";a="549674375"
Received: from fmsmsx605.amr.corp.intel.com ([10.18.126.85])
 by orsmga003.jf.intel.com with ESMTP; 24 Jul 2022 05:30:16 -0700
Received: from fmsmsx611.amr.corp.intel.com (10.18.126.91) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Sun, 24 Jul 2022 05:30:15 -0700
Received: from fmsmsx605.amr.corp.intel.com (10.18.126.85) by
 fmsmsx611.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28; Sun, 24 Jul 2022 05:30:15 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx605.amr.corp.intel.com (10.18.126.85) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2375.28 via Frontend Transport; Sun, 24 Jul 2022 05:30:15 -0700
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.48) by
 edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.27; Sun, 24 Jul 2022 05:30:15 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Zn++iuuivnqyLEKat8HAiQ2+zPoM3Igec36s4Tn2B0ELrXlzS57zuK7XG/l5tUyU40LRLf6yCUuwuAfHvCvYlRd77OhKcTaA8j5zPZVqpHs2Su1YdTfeA2KmmXGihDkQndzjMTqGvrLyP14FKE0FYD3pshYTZ1caDNMYHgnrfbT6VVYxUhIkfWPVrSXShs7TZoPvtXoiiQPKI0erooxCvbA7vXPCVBt3DhIKU/jXd3vmJQsx2/W/WbGucgE71hVaV8taUbcfh9nyh/2wjvS+xMJmNlMsy1eTpf7vdVvCrNfc6JfZBPqVtn+LcEGJ4/B1tFbCTpDx6Ig2OTPnJaN3pQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CMinuH8oYlPepdaugeGM+3NGiUcyNJ5XVz6gdCMENUw=;
 b=dm3+VoefHs11I4xdXdbwqcDPFxtCzajH23TLGlIlpDzVbTHj7+1O0qqcNn7Ta7r9RsajRQomU76FberQJFoHqCTyiUm1yZs0rk70dvH/Xpad3tFtldJu5D2G3q+15jGPOl7ndP9uLlZJ/S4lFNbNsJKPPQDHssPlRtLhIG+7pWBMIyYwxd0vs7vQzhtNPjG0/9+Iyzsp399XKC2IRi6Eh17WEnV63M8WpIs/2Ar7HflFTlVE25m81Q2bzreaRkbpU6zkr9C7WDH6Jnp0xmor+S75i3N5ymAgrsiNJtFZDoopY/82ssTGu/QWDW8od49DD2EhIMUIluTBrARLbzgVMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM6PR11MB3177.namprd11.prod.outlook.com (2603:10b6:5:c::28) by
 CH2PR11MB4213.namprd11.prod.outlook.com (2603:10b6:610:44::16) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5458.18; Sun, 24 Jul 2022 12:30:13 +0000
Received: from DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152]) by DM6PR11MB3177.namprd11.prod.outlook.com
 ([fe80::3546:7df4:c8d2:1152%5]) with mapi id 15.20.5458.023; Sun, 24 Jul 2022
 12:30:13 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: "Srivatsa, Anusha" <anusha.srivatsa@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Thread-Topic: [PATCH] drm/i915/display: Cleanup intel_phy_is_combo()
Thread-Index: AQHYnT8VsPc+nxQnkUaCs3vzS65N+a2Nd1KQ
Date: Sun, 24 Jul 2022 12:30:12 +0000
Message-ID: <DM6PR11MB3177F5896A8119F6DD7EDD67BA929@DM6PR11MB3177.namprd11.prod.outlook.com>
References: <20220721201754.534870-1-anusha.srivatsa@intel.com>
In-Reply-To: <20220721201754.534870-1-anusha.srivatsa@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
dlp-product: dlpe-windows
dlp-reaction: no-action
dlp-version: 11.6.500.17
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 705c26a0-ed56-4cb0-4fb2-08da6d704183
x-ms-traffictypediagnostic: CH2PR11MB4213:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: KJtYxKnNJUM/AbUPOGv3XW6EzPaWE+Pc8dZueeLkkF1WGbBFnJTvMX4YRSRL+aO+Mbgf2g4BBszepQGXwwTLfTa4cWXZROpf1kZE/cYJnBQgOEcdBsYeIdf7LgC9mAhySoHoywwVcSx0X5k14BKyNsxIrJ8spCht7P5OCtPydNG5xQmGNfQjlstZDsmNn/ePA2tmCbePN8gYAVdmhWZ44aCT59OEyhkvLugXGcpaxfPyw0XaKXdoWvyeRvvD/B1O+KxHjirtnakPl9aphYSY/RKFoeOXhtBXd/UH/3yACLoQsHADIR3IG45aBFM49+WCA0fm+sVZ3D/UP0qXNcXAWX8u/8Z64ULWl+e5ZBdjUnrSt+CqxMGPQbTwemzWkxnRyoMrmW6Orf+NKRNwiIf1BUJdKskstSlKBxPBIlN4PuFKcsJE3BfOpDA0Evml6+UgQJUABo5Nq96uMtKUN097vP+DPEfT//nzTp/DAmm4FWAlzGVuG+XeNGiErXgWFp8aOvsGNxjRKoCVog5ET40olVAS1XUtflChHi6p24tgmNKxkQe/kdFi32bLIypMFN4zh6d/GXWOwC+rKJwo6DtfvqP3LHkBQ/QkpcuX4hockBYM/fclMgH8d9ercrCWWzJISVsWlju/bZ5zc4kWA1tC27Kp5ouCQzBfGapIfDAwkcdRNDYuvrjX5S7/nDhKlAmZC/kIq1DO5faG592ULYsfXIVUDV4sd/SoNBvPfcp4f07shxQU+gG0CaZleG9x70Oh2JXTvac0jG8VkluuW72IZFTnuTrZLUEzG/NJUUNU+fWgE6NtwDBlsvEl9j+YzPR2
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM6PR11MB3177.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230016)(366004)(396003)(346002)(136003)(376002)(39860400002)(8936002)(4744005)(4326008)(110136005)(5660300002)(107886003)(38070700005)(33656002)(478600001)(41300700001)(82960400001)(316002)(83380400001)(186003)(7696005)(6506007)(38100700002)(52536014)(55016003)(26005)(55236004)(2906002)(71200400001)(122000001)(8676002)(86362001)(76116006)(66446008)(66946007)(64756008)(66476007)(9686003)(53546011)(66556008);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?keuYy9OeAGDKKk/8SvYPJWm/Ii9+8QNBvP5AwH+zBJ7ZYcvXjRvw/celPBen?=
 =?us-ascii?Q?mgZzRrhmkbbpbqOi1qxkOL8kRMqqHQc15lU0hk9ShD4Hu/9H5Ha6oXfAR6x1?=
 =?us-ascii?Q?FDwZ+zN/VyZBV3jLcNcn8x8GOhlwrjE6AuySznxijtDHPc1PM0RJf1uW8fe7?=
 =?us-ascii?Q?bM9TJLf+Kq6pehpEJL8VAELIKDPojNhZMrr20RhFvIw97XPjFQdtUESy9C7B?=
 =?us-ascii?Q?nUa/Hftqzyn2rTg8x9DD9Re113QCgBaWYGmfqHMA7tXOlwKq6ScPHk3WwGwS?=
 =?us-ascii?Q?zqk33kq0Bhf0qrNzUmfBD4D8wYaN9a/clKlmdkNqK9NN1GHfiYQj8BBRke7n?=
 =?us-ascii?Q?Pb95pT9xuwDwyue/OzQjFgds0hAb318js2iqdNmJpzlnCr6gqAnmSrF2nc2b?=
 =?us-ascii?Q?Or19keYOjW94WzBHRct/FOEPylCbA/4ENRKOqkwl/rfygrKrzg4yUOV3r62x?=
 =?us-ascii?Q?x/WVQTieT6GhMeDpNS6MYkztWbnm1w/VcTWDznW5pg9EslbLfSM/2q9pD52Q?=
 =?us-ascii?Q?Awuk0CrUvnrtUcMvXGj/A58aXkksRsGTKE8a/ACd735W+gLEm3BsUQOF8BfG?=
 =?us-ascii?Q?HU8EcnPrt03RYi+zB1sKcPQcDinDXToWRIJSaKs3J7W+GphNqOh28PYSMRuF?=
 =?us-ascii?Q?e2b5diM9uJouNOIEWQi0iu8YaAgqCMFeP2I2jWtMJGf0iGjVndnmwIXdnvmT?=
 =?us-ascii?Q?YcLf+evJSXuIZE12xIn1BP6J3sweHsJeb86A1oeNNPhjGaR1ktL+yevLQiy/?=
 =?us-ascii?Q?jUVs0piecrmugVQda52Bs0qqS8Sfi0MwG5UTMbKdQNxsZ7/330qrd8LympZG?=
 =?us-ascii?Q?pHCUV5800xj61i/Pqc4Aw7/YiGDNjwZGteeTp3QYdbC+z1c6EEHoAJqJqS1E?=
 =?us-ascii?Q?BSjq93xFmgz3es4BURbQ1tif6DVPms5qkeWDTpIx4ZnZ96kcm9HSQg8fSpmN?=
 =?us-ascii?Q?RmXZ4vH81mROcYNVLI9oepphDVYKSTA6yxu6+nldYCi+MGW/TAwd4rdc0lsU?=
 =?us-ascii?Q?dYo4r5IKTmR5ik2NBKONIA97wk4AQfQSSBpqlAMXv8Zio5qLt+ISW8NSRDno?=
 =?us-ascii?Q?cgMYNBeKExAyc6aqDHcOSrw3SmhHvGsg0o1K6Bm0okUjHmyCdSubZ/ibnMWy?=
 =?us-ascii?Q?4u2RkNRfw8CJq5N39dwHJa6KcfSAMiKABVJKSreojQpz3hndQ63hCflyTHO3?=
 =?us-ascii?Q?D98b6w7R7tzScI5ViigOn/sWn4SPVVOY740YjyG41cJuJJ/EuvyapHxeLkBy?=
 =?us-ascii?Q?QWDHM7Y+I6MzH6Dz/zngoA87Kk7xbfUr1lAwB+vmOuSQJNihmFZMmvdTuW6Z?=
 =?us-ascii?Q?hhvW+BGfcsHypdg5psqWlo0b3SN+dEPOyyAWvx+SHrMtU2mKqUd6G58/wuRE?=
 =?us-ascii?Q?PCRhXPiiWL3sVJQM7Lc3zFp9PnDJJt4/P/xMGztDKdVdrgPcRJnvAsxjnBfk?=
 =?us-ascii?Q?6Til7XSVYaARG5w7zd5Kenq+gi1jA9rILjTaJifkfeHzIRzsMtycv7pQCR6W?=
 =?us-ascii?Q?qRGQQBmM0kFbplcDkf6p1OzZwmKMWKsb2sQeZxrxObvfk0fuAh9yvFTkce17?=
 =?us-ascii?Q?Q7uc5xaNrti/puLGCT4YJdeAHGE+5WVrRaG2kmnO?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM6PR11MB3177.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 705c26a0-ed56-4cb0-4fb2-08da6d704183
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jul 2022 12:30:12.8923 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Epw/1/LuSXD8KReQaOA6OmLTC5ibRg55qFEqCbg3p4Dx3Uj+OYpan++Oa+nqNIWusfIjcB/GUGMaVzpwKtQO1g==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4213
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915/display: Cleanup
 intel_phy_is_combo()
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

> -----Original Message-----
> From: Srivatsa, Anusha <anusha.srivatsa@intel.com>
> Sent: Friday, July 22, 2022 1:48 AM
> To: intel-gfx@lists.freedesktop.org
> Cc: Srivatsa, Anusha <anusha.srivatsa@intel.com>; Murthy, Arun R
> <arun.r.murthy@intel.com>; Roper, Matthew D
> <matthew.d.roper@intel.com>
> Subject: [PATCH] drm/i915/display: Cleanup intel_phy_is_combo()
>=20
> No functional change. Cleanup the intel_phy_is_combo to accommodate for
> cases where combo phy is not available.
>=20
> v2: retain comment that explains DG2 returning false from
> intel_phy_is_combo() (Arun)
>=20
> Cc: Arun R Murthy <arun.r.murthy@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Anusha Srivatsa <anusha.srivatsa@intel.com>
> ---
Reviewed-by: Arun R Murthy <arun.r.murthy@intel.com>

Thanks and Regards,
Arun R Murthy
--------------------
