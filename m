Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1AD7D61B2
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Oct 2023 08:32:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D8F1110E050;
	Wed, 25 Oct 2023 06:32:09 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 35F8C10E050
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Oct 2023 06:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698215528; x=1729751528;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=oMK7JcxXPV4g9QmlMCJArMWgEH/X7skyCFLpSD59ctI=;
 b=YnvcvhPPTvu2OHQbtGjwRcgSq5oTkihWKiVSZT/FmAie3xRiumnpEpkm
 y2rIrPqAEm/Sl8nlqHZEG/quDgs2luk2qdaLvxv+FjVTAx/mFJn5RQEf3
 6GLop6B1BJZwhzN0RQrZr/3ILnbHiDKzNNRvUps0bk3fmA9T9R+LvmuO0
 xd+QVKruBEu3MQmF2BLMShtI4Nx/HRYixgJY9Vq5mAwwbcEluPj8KgqAB
 +pO8SgTgiqBS0UMahVt7jfHJlpY53l+H3g0cxyR9ivQEDohH4l+dxbumO
 TpKgRZTE+PVOWzKALScR42fNBF3jwWWOCgQXDl0CJiAjBC1BbUNAX2At4 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="453719855"
X-IronPort-AV: E=Sophos;i="6.03,249,1694761200"; d="scan'208";a="453719855"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 23:32:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="829115393"
X-IronPort-AV: E=Sophos;i="6.03,249,1694761200"; d="scan'208";a="829115393"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmsmga004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 24 Oct 2023 23:32:04 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.32; Tue, 24 Oct 2023 23:32:03 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.34 via Frontend Transport; Tue, 24 Oct 2023 23:32:03 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.100)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.32; Tue, 24 Oct 2023 23:32:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ABH8t82Qe2tCfCjog53ouyDPK1XzC2lqA+6MCa5wmiCJ7c/ccg0T9sg5OFl1NBisFuWhJ6hOw0+JON1jLWvZEnqGfOvF9b0IWxHke+i767S+kNwo28a85TXlBcdFiUdm3d2dv0xlp7qqYMlcT9ujtfytwRjl1UDoKtSXNSrVyhF7ZeQou6huk2mURNd81Gn9ArX/Rvcz1I9koPTEU+jRi1JAFKQncZkIFOXmt48jZJQez/rvdzAXyJPm87v6ZERHO2MfI3+0goPrQOdB2zS+LRnopXMFtDbx1tdBpEREhcHdtUUsdT0dRtJsZkjTBWvET652upFfCbsU7/JKVH1VWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Gb5UKf7xhh/cHX4xStB04AIk/7z7F2JUahBmRJRebMs=;
 b=l4fWnr5II47ZB+Zmq3XkLAXL5wChTjpXeX71svqm4XFxZTktbScEvYu41L3T8zM/yTp7imMw9zjZ0kvjaBkMvaDjaLrrlBFjfzHu2nK1diOOtXY9wmBCERNrnQcycRNNNmqeNVXkeAbLhvLq/ZzlBlPxgV3rL069NB3dC8b/C/HueqjNxM1USSn70EbQ+BlvlKEWnXsAkUxLXLq6lC0KxNohTqCa4tCtQtQ9Y5yswfke979DMRuBPRDgGwo9diza3rG+GKnXjVXgVIFSm8BLmulBCojgAkZW814UqEYqGnA6im0BHALDPobQ6fsWoDcnnr7kU+yvPDyieF9kCUgHGw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DM4PR11MB5472.namprd11.prod.outlook.com (2603:10b6:5:39e::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6907.33; Wed, 25 Oct
 2023 06:32:01 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::9bdd:1d20:1b4e:3e92%6]) with mapi id 15.20.6907.028; Wed, 25 Oct 2023
 06:32:01 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "brauner@kernel.org" <brauner@kernel.org>
Thread-Topic: Regression on linux-next (next-20231013)
Thread-Index: AQHaBwz2ENP+HgSxG0iAJezJ7y7GBQ==
Date: Wed, 25 Oct 2023 06:32:01 +0000
Message-ID: <SJ1PR11MB6129CB39EED831784C331BAFB9DEA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB6129E1EA583B3DA3B45E37A4B9CAA@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
In-Reply-To: <SJ1PR11MB6129B9D6396E5BECB46A25A6B9DBA@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|DM4PR11MB5472:EE_
x-ms-office365-filtering-correlation-id: 64b56fef-c211-46f0-b8ae-08dbd52418a9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ZtGcSiKwcpzk9iDd6wonCniKYscm3KZguqtmpRNjoWMpteHsq8ZTpm0UdP54xKEolV12mCa4Z+pxkl4H6guGqIT/ci699efg4jsOaOAkm28f13JE+DCdPuZyU5xMjOy2RolLWBK8uY7lj9JVzooaIywrQxRw8jx8+d8ybpbnoMiFM2C2RcIUS80qigGFg3pPTW6VNVz7affxaTfknSH5EsmTvXaojxOF0x5BnaYhwwKTeztYQM35krDN6Lk1hb18W9x3hc1+8ejjZeZdxpB1rMx61A8ef+EzmYcK1PExvr5+zU7ohyqL1h6rEkZk2KGKp5R9WKWcOHa/7RleKabdsk7AFy7F77Lfr+RjupXLQIo2BFaHM1MmyZP+98HIvmJKRmqMD1dIrA5gs/krIVrM64BYt9nIF/ZMbX/BNb1GSMKjMsCd8ezYed+Q2BbgZtkKobEW/42ANJHEIKwB6Q4VlGqffC/CfwgoDQRv35dHe4YDnhZvBup5HVsOEkW9+gtk19azD6QrK6LNS+yDyBXCoaUaqodMsoeVtgy8iYO3n4QiE7+BxWJr6TCe/W7c4s8RLbp7cXtIyN3O7OgqG4f5GScxsgKVkziMcMF3w0vvIx2u5JVqKC176VY/kyr0a4tR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376002)(136003)(366004)(39860400002)(396003)(346002)(230922051799003)(186009)(451199024)(64100799003)(1800799009)(26005)(38070700009)(38100700002)(2906002)(7696005)(55016003)(41300700001)(5660300002)(86362001)(52536014)(8936002)(8676002)(33656002)(4326008)(54906003)(71200400001)(66446008)(478600001)(107886003)(6916009)(6506007)(122000001)(76116006)(64756008)(82960400001)(66556008)(66476007)(66946007)(316002)(83380400001)(9686003)(966005);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?HXaF3lzsgkxSUxdsLLWVCwQ6IXLp8wgCZDWqpaYnblhwBB9jahfhRCsL5S35?=
 =?us-ascii?Q?LRjVIkHaz0Wbbc4bSz7H9V510C1Epg7XvVdh6wbxHxJeNiLTr1moB2UL5WXv?=
 =?us-ascii?Q?9JBx9e8pYnB+VgHC0WxlsIiSjcfNN3a0TrAO0rDJvBKkTn1wrYRkj7UAmyJr?=
 =?us-ascii?Q?3JdKGUCIxu7mGUv3urapTeYurV1g4OcO/LOG4TaUHmdmAHaN7dgvDhA+ZuRG?=
 =?us-ascii?Q?7GtRFTTSQbGsS71Ry4XR2ImKKGWV8zBoA0nfntdqTDMvLA35HGJQiq/Rh4Dj?=
 =?us-ascii?Q?SRpJquirvEE1SgwT0Pii24qI/v5ScmJywEAcI6q6p0eJMlx2imEE8e7GzRCG?=
 =?us-ascii?Q?ft/Y/eVNGEnr+xjbUG6nLgkkJ922CsB3VaY1hiQXhaBed+N1GLb0xAGlsEOO?=
 =?us-ascii?Q?ZL78kWWsQXsoLhNu1RVuioNvbKU7eIVopg8p9WFxSZRq2Zijn+EfAf4J7ruf?=
 =?us-ascii?Q?WvIzT+NM2L5OO/zIwFFShEWGLx4Fis3a3bB52/yQ2PnLfsxWq03VtWWjt+Rp?=
 =?us-ascii?Q?hvIbq+fxeDtlYqkYOf2LFA/wAzQr31OtcqScWUM7ByJnvkdV2WRifdGjYwIk?=
 =?us-ascii?Q?GV+HOkmktE+iEb3aBaGa4wcc6YV4YPKdq/oc669GkQnUBSjEw60lwwH7erlR?=
 =?us-ascii?Q?m3+JtCfutODw7Ok30026dWki4RQl4NJ4HvMOLcIZRc35Mj1dCjKWR88jNcC1?=
 =?us-ascii?Q?KZtA8mVHP/FQWrpiYHLObCAP4ljgrsXCWdb+7dhPmeG69Zf5tAqRrn5Tc2xO?=
 =?us-ascii?Q?vSOZ6FvV18gSgUtQmtOzaIJ8zNtpXGWF1QbOIuoUIQXxERbcQnevOhs50/of?=
 =?us-ascii?Q?3xdO/EVbeaTDU11h3VvnR9wnhhO9RQTYbsxSXzQRNAbapPvmLR1sEd8Xmn+y?=
 =?us-ascii?Q?pPyz133ToDy1PkG8qHCPBWq1T9PphoihbaOTlyCjDuJpykSoJx25XuN9kT6H?=
 =?us-ascii?Q?n2tQYa0WsKfW6fbnqDzFERr1BvxabLme3HhF2qrHz0jGQnC3nWhOyPQBSN89?=
 =?us-ascii?Q?pFC0hUQCoLkkCgtr4S5NedXyYsW+gUv+w8vBeJ1rhtOxL69IjxX0wqciH9jj?=
 =?us-ascii?Q?u9reXSy18qlaLjtYlACFp/qp6QwMM4k5jIQ2mBhqQGHRNR/9pR0vVR06367l?=
 =?us-ascii?Q?ypi26a5Uk5/x6FtJ1/Yd0APmJMPpEcE3apZLxm3JHH6oFsth/dv73OWUm1nb?=
 =?us-ascii?Q?Q2hP+lULBtGhW1Ernwji/NLlZ14IwbNX34J9s99bNHWAvulq9bqcwpt3GRl+?=
 =?us-ascii?Q?SoV2/3FkfjKOLK9jvichFfor4cRiHdR5jXvqJrjRl3Gkj1W3k0HZvCheyQir?=
 =?us-ascii?Q?gcmwdPom+Ryp1mvnaW+GGWceU5DFuUPIgvkpWIAwRG1bcq5IsuH2MseevBG6?=
 =?us-ascii?Q?dF9SenGcfkSZto3vuzor9Y0NJaFrIPQiyj/zQPmx69Qechl4OqwwbMM1oB6b?=
 =?us-ascii?Q?iWxHY8rsm2ePgjXSXe0mYFdReM1/3EKzW+J+wjNwhLgCDkLaq032z7WfpKJU?=
 =?us-ascii?Q?MsI1bzGz9rCqAQGxSFxhJQx/V+4Ei4oZ3rjZk2Umh7rjrZEzFLdcrUPhOOat?=
 =?us-ascii?Q?oIi1w2r53o1VRt9HG01ofuTvNAxDN+OyrKv9jztokNUwtxQQgFZJNW1C8AI+?=
 =?us-ascii?Q?Yg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 64b56fef-c211-46f0-b8ae-08dbd52418a9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Oct 2023 06:32:01.1768 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: npwEPqudcNzfrp//oAP/KyG7/Dira0NxbtKrMNTNWWQtkcqQsRdT1mi76Sfg+6NA5ChCKXqdrun87KXHlHAcvPhqSIdc33fwM8Cglk2/wG0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB5472
X-OriginatorOrg: intel.com
Subject: [Intel-gfx] Regression on linux-next (next-20231013)
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

 Hello Christian,
=20
 Hope you are doing well. I am Chaitanya from the linux graphics team in In=
tel.
=20
 This mail is regarding a regression we are seeing in our CI runs[1] on lin=
ux-next
 repository.
=20
 Since the version next-20231013 [2], we are seeing the following RCU splat
 ``````````````````````````````````````````````````````````````````````````=
`````
 <3> [511.395679] rcu: INFO: rcu_preempt detected stalls on CPUs/tasks:
<3> [511.395716] rcu: 	Tasks blocked on level-1 rcu_node (CPUs 0-9): P6238
<3> [511.395934] rcu: 	(detected by 16, t=3D65002 jiffies, g=3D123977, q=3D=
439 ncpus=3D20)
<6> [511.395944] task:i915_selftest   state:R  running task     stack:10568=
 pid:6238  tgid:6238  ppid:1001   flags:0x00004002
 ``````````````````````````````````````````````````````````````````````````=
```````
=20
 Details log can be found in [3].
=20
 After bisecting the tree, the following patch [4] seems to be the first "b=
ad" commit
=20
 ``````````````````````````````````````````````````````````````````````````=
```````````````````````````````
commit 3a77344f50d847d51abb8629a6f181cb21684157
Author: Christian Brauner <brauner@kernel.org>
Date:   Fri Sep 29 08:45:59 2023 +0200

    file: convert to SLAB_TYPESAFE_BY_RCU
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
=20
 We also verified that if we reset the tree to the parent commit the issue =
is not seen.
=20
Could you please check how the commit results in the issue?

Thank you.

Regards

Chaitanya

 [1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
 [2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co=
mmit/?h=3Dnext-20231013
 [3] https://intel-gfx-ci.01.org/tree/linux-next/next-20231013/bat-dg2-11/i=
gt@i915_selftest@live@mman.html
 [4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/co=
mmit/?h=3Dnext-20231013&id=3D3a77344f50d847d51abb8629a6f181cb21684157
