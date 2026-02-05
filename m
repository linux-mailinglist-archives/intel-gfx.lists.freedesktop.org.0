Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8PIYCdMphGna0AMAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 06:25:39 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76232EEB43
	for <lists+intel-gfx@lfdr.de>; Thu, 05 Feb 2026 06:25:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D718D10E7BB;
	Thu,  5 Feb 2026 05:25:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k3QT2s8k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8725810E7BA;
 Thu,  5 Feb 2026 05:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770269135; x=1801805135;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=7uQru96gw/xZDrx7oYPoSKHumbdJwNWEtSTE9IbM33E=;
 b=k3QT2s8kLdMmfI8euowkd/1p/RGoP68xj+vREn14XZXK4NLMPodZIpmW
 XID4xsTg8EHaBduhmUkGOd3KimBgrmz25+rxf+c7/cPzAnuXraQDcsTVn
 Fz3oPDazarSEa2grgBj1xy0lTXd3iRFGb3KgzRl+ISARXyHkMBGR0bXmF
 tGh9OWh8iMNF52G8AqrND91/QNIjWI5amFs30vpp3v+mkEpjSnjf81zpR
 ssufg16ZVjbC73R/jiKC9lvlKUwWLqmJzBN0QHBzilgA4E0/D8vqIDrah
 Kzb7zmIjlmElXIEW/DtobZdGL9tLPFwwJrSC/C1dB9mQvN1XzaXB4OtcT Q==;
X-CSE-ConnectionGUID: ec9X+QA0TEWe7J2nI7wXIw==
X-CSE-MsgGUID: uFU31i3uSCioFpa/Q9voow==
X-IronPort-AV: E=McAfee;i="6800,10657,11691"; a="88884605"
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="88884605"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 21:25:35 -0800
X-CSE-ConnectionGUID: eQccAdANQzOFOD2Ph46OoQ==
X-CSE-MsgGUID: ujtyYdfYQWut+nxTy6WOsg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,274,1763452800"; d="scan'208";a="214912500"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa004.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2026 21:25:33 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 21:25:32 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Wed, 4 Feb 2026 21:25:32 -0800
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.53) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Wed, 4 Feb 2026 21:25:32 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sMgNxLv7ArS9F4xIEHrfmoYk0eiBdqsqaG4NrVN/YL/XcRamwzA5qOruWEwPlakOk7ISapMLHaSF8Sp3JArEEn9zUMLJv7InZd2/ra0TxLqRhVxAzpfNmygYQ+aBafVkXkK8sdFZm/gxt48irVMJYvDP02MjO7/c5UqoOywglZOTCaRMw1fOmmNJi6xGMlHcJKeec7nsnn7K0vmbKLM8vTP2+x/D7YU2/l3a/J9dW1S8XuhaFWbGK3Jm3JqpcQRlZ0v8K7+ZOSxKjKIBFXCa9gT60fuMVEFydO8+j1gOxy7dlR4dIRVjyBoOQXrHBwtvV09hWfIzDF/AfH01ivqTFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=LNJlwDaXyz/wgyt5KnOvc1/q80BD0jwHilZCV74YqZE=;
 b=ZEsxYKpPp//1MH7jLLSTszmAEvQ55QkMbOaGnwPYE2esgnb3nPK4lUGYozRPMIxwTmm0zsbIZJVueL8K/iKSgXvX1RinjeBk9aw94eZsYdH6Khfe8ms1vPBpd32CMWGqNGWg2mRU0IgWA+YLvu01+8OjjVstrwZ5plcixEmXYH17rMV39mxpdsezTVMBq9idfHniQS/ePrIKBA+06ed60IEIv2Jpo20Q+ShMwysRXyTcDbKkTqr/Qn0itSG4ZOeteY9RRMsi/cGrF/+8e1Fd2Z27W/sHsDnA48ikUrMWw1EZOBM+UWzBA+WsNs7K9bdlKA1RqD9hJbqKgtsF4t8D3A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ0PR11MB5102.namprd11.prod.outlook.com
 (2603:10b6:a03:2ac::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9587.13; Thu, 5 Feb
 2026 05:25:25 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9564.016; Thu, 5 Feb 2026
 05:25:25 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "Nikula, Jani" <jani.nikula@intel.com>, "Manna, Animesh"
 <animesh.manna@intel.com>
Subject: RE: [PATCH v2 02/10] drm/i915/cmtg: cmtg set clock select
Thread-Topic: [PATCH v2 02/10] drm/i915/cmtg: cmtg set clock select
Thread-Index: AQHclRdYTwkrqdktAkCC+h/pbNIXSrVzlFRA
Date: Thu, 5 Feb 2026 05:25:25 +0000
Message-ID: <DM3PPF208195D8D35A9D400594C9F21EAD6E399A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260203134407.2823406-1-animesh.manna@intel.com>
 <20260203134407.2823406-3-animesh.manna@intel.com>
In-Reply-To: <20260203134407.2823406-3-animesh.manna@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ0PR11MB5102:EE_
x-ms-office365-filtering-correlation-id: 2953667a-9333-45e0-9f3c-08de6476f76f
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?4R/i/Q486X2/Rw2/jCdY2w4JcvSHlKZ++LcCVaEl04BSKSvsbPnkduwrfBNA?=
 =?us-ascii?Q?/334ZdjLeuSWlXCFLC26gqyQIUQpJUf5VaGPc3qydKeHDPPkoWuvHuaO1Ab0?=
 =?us-ascii?Q?RqUyXfW3nFgbOKMI6gDeABdCx149b83i5X22GdeVr+/lq5oQ3uap2CZdRvNz?=
 =?us-ascii?Q?HsGAIoiFOfNWRsPXDoWZM/JshxOjp8fy07RbkJG7ELAM9q7NBfiCfEX6hBDX?=
 =?us-ascii?Q?bT2No2/oXqX0xqmm88MGWApE5NemM3QNOJFftDFAnNu5QZMxj8SRoqLFQCMJ?=
 =?us-ascii?Q?GuetjuzzcOBrwtsmEEiszMJNfFlJhd4wsuyjDEQcxfeu+0bFeJTUEjKTTf9D?=
 =?us-ascii?Q?2wrHMiOVfn84JFJgVqRCCZinBQ+gq6pQxW5ODo2glAMbkLzIUxbeWAscrGNm?=
 =?us-ascii?Q?L+UDm4v70Cp7KxUfkjn5T0uAoUTcNT7cDblB3Bt1yPWmc05++GViHuJsbDaG?=
 =?us-ascii?Q?YI/vpx2zYQJ1ApeZGdZGjf+LSEZdzaAgjs8eqxN8qTva+ZRlrQxX83xOFQVo?=
 =?us-ascii?Q?qoS2vQFV25HaQBREVxbN4jDh6f0tWIAJCxj9Ls6ic2xiPzgUcx6R3iQTiPej?=
 =?us-ascii?Q?Eiy7OFBFkWczHfBt/Os9/2d6HK0RPLwSOAwni7q0WN8wW0J9cH5QQVK8C8m+?=
 =?us-ascii?Q?oRIlVGtGKMOI++fT6cQZ5yVKgLc0XFYKRzlCc2n3wd2hmKaY9S1oXFeTHuzT?=
 =?us-ascii?Q?KgBbN0q/i5E3xYGg/FlsHjooo+yFRp9BCq6CKt0R5PTDJIeEC0FnwuIBw6xV?=
 =?us-ascii?Q?NAiuROWHgVaixJcpyQzBk5QqaHAIuslf1gowWYiyq3Rp6fVc7AmMbM+ncz7V?=
 =?us-ascii?Q?unCss6H/vrfJck35xUQ4oqoso1Vr2QCAFE5ry4dNRgVrOHm0x2TJoRaWowXF?=
 =?us-ascii?Q?QBMD+ylBoMVDygfRCjR7V7CYuNZwIDo6BY+p3Of2WtqeAEfQgzn7lAO+IGlP?=
 =?us-ascii?Q?aQtg97b3k/wqV9nYGLFaS7t4Ve6mALVSTHSYB895bvWgfcUuLRMDfViNN35k?=
 =?us-ascii?Q?Ty1ha9e7NCtP5Pcu60g1TTmx0VErtqOJmv/GxXz63BMOE0EOWO+VL8hSl6CD?=
 =?us-ascii?Q?EGvqfNv0NM0G+CTd4B0lPYNIS1436+an+34DlIKWvSp3sEVh6c3kovQZ2Ts2?=
 =?us-ascii?Q?zSbAcoJt27q5JyOHpYyoLkR8F9noGtJR+NPjPyDnTQXDVM/gTefkgBCpoTS/?=
 =?us-ascii?Q?HmsQ2VUVkGiqLmynTh80gqQWWvUIIenEY8WmUAbqlWgpawaJ2MbkpREYAXyW?=
 =?us-ascii?Q?hlNTO2WCyNZ+sg5R2PgiWnWUc6ULInIcc5cnCA3YhelrJGPkoQVqKo58wZIG?=
 =?us-ascii?Q?2orOo7U8LGyihShikD4EsV6wMQnXBmfbVoFSXdQ32R6V6j2DsmQr8JYN6XW7?=
 =?us-ascii?Q?CT9VzpcgWySP1CFdASNxYSky7ESXvuDaKCahU9LszlGRS8M1V2RKAvsseeta?=
 =?us-ascii?Q?G6G/+8IrOW7gcRVSJeIldXSml9f1dt/6Z/iA1OzWKfuiPMMYjCsw8ygzz9HC?=
 =?us-ascii?Q?KzkLUAL7jHZmYL0Qfq4ncg9JVpBuUngvQXRMaGEdVxIXBsNDn6lhhV4HnNT1?=
 =?us-ascii?Q?13YEmcTjJRa85qSYVwD6G6JBw5+EWc8MQSnbmhaXmCtW1wjuq8blgZPC0ySu?=
 =?us-ascii?Q?ZDFEriA9nDHxIkYUp0GjJ4g=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?ICav+8dHlNa7KqrYaNDzLoUQwDadwz5QobQWH5HwjP5qTk23OAPnWnfRXBd0?=
 =?us-ascii?Q?9+wQM7AVCAGtmfqJysYCOEG8xys5LyWvZNc0ty9GUg5Nc3esXrFCin9omA4H?=
 =?us-ascii?Q?SnC/K9ITxrTTZGin7a4dO/GkAhxk8WX6Bg3ahbPOYGcH36eKi1RtlOfoecDP?=
 =?us-ascii?Q?6t4mHZrUjzd8d3Lc/+lHgIqvnvrD/UzSIvH0fWNw/JVDqMGAY4eGfSSZwMWi?=
 =?us-ascii?Q?eFJPKV/kBm1Jug7+0IYno395GN8rPbOSor96C0NfAESPZxlaTddSuH800TN4?=
 =?us-ascii?Q?q3ZffLZm0M/xuqgdBAZdupcdXszEaJf46hF/wpY3tBYdszftXaAUv1x5EJJg?=
 =?us-ascii?Q?8HvTxO1buUotiRAlysyV2vOsP+lJc0jbz8Qv0he8HsUf8NxbBRyOxrkT1jyI?=
 =?us-ascii?Q?WH8hSAC8kjLT5fHe0YeAdl6jJ2BFFOo14wGniG6HVr8R7Aotf1I7+xmgI+bf?=
 =?us-ascii?Q?xlGlUav8NZjbaNRT6rAyHdNOZW6WGGSvx1dpm6SdyGx1kwkLMY2EkRXTiMPI?=
 =?us-ascii?Q?DVezdkDofIU+A/xkM4d1bHN7oeLk9d5Dk90nBoDybmH/MjsCC+D47SripdH6?=
 =?us-ascii?Q?lqi34bnw1VPfkNSsNYcRMLy0fzRzsMJFpG4ELxOTF9hJgREQ6pJCFWG1BohW?=
 =?us-ascii?Q?D4FGGuhkK1UsAKWCeI9w0VGcYLQ8Tnlu3l/Sp9aQkOB31P2Q3IfmIEvnOcoC?=
 =?us-ascii?Q?tMKunUO+Qd4vZIG7Map3nsCFqj0zWvotkdlMvonKBJphPObynZ5XufDD7pQR?=
 =?us-ascii?Q?D/4R64v8OzqnEAFPSpvyvTQpgH6LDdQr3te8ylc6hvcEY79gD+87lKB5wmqz?=
 =?us-ascii?Q?HVhORQbaEM3s2VOkbqf8iTMuZIZM8ZnkwzvaNfsKx4t2ggZ8eDrhsyax1v2x?=
 =?us-ascii?Q?0XBpeeeUT4WaIWZ/sfwlExK3B0BEaA86afe7zsw8NO5OYcck4mb/ids8kGj9?=
 =?us-ascii?Q?htv/pEFZCOEda6mQVqcQWsh2syhHwg6lL0jhmRFK8ippV6a08gtjI3/foMpU?=
 =?us-ascii?Q?N9OywlY61ce/yFgw69i10FU/AjAkC2ed084ece/WQCeCtPDZoWZl3UVIQWgt?=
 =?us-ascii?Q?vAqW4y7EaggKVmCraSLxf6cEKLEI5GmsWuR3RfwHNU+PH6n3UEJas0M2EU09?=
 =?us-ascii?Q?cjDGmTbDuxiW6IJyxzX/oK7gY/8BLRyQWTHFYpOuen9w0pIRb4sP6pO2twAo?=
 =?us-ascii?Q?Gj9Vtlb7YblJTU77OWEQD7dZmLGC0wOzAX/4g2GgaT3U2xuK764VlrvtXUbP?=
 =?us-ascii?Q?8cDIZiaghc3VVnINyfxZDggVTHwbsZVxAlKYVGPT3fg1x02jXxs/Jd1Vy6UR?=
 =?us-ascii?Q?bHWekiaUbY7K7MblzKP/yJaLhFey1+ls8LDPPomWSl5xyIzRiwyfojoKK+qK?=
 =?us-ascii?Q?cLtsEYg6PameSbfEUgRwxTefsS7TDz22jEsAqwBF5z2VoaHBjW6Mk17ufQRe?=
 =?us-ascii?Q?qxfCTvgOmUiWAufONPMQXwHwlFdoKqxWn0aXAszC3LRvCf3+NgM7rEseMF9U?=
 =?us-ascii?Q?r/PuabRKs1UeVCaX4CYwMmTcF4dhxC3VKog/o/s9pCDevtC8hSCQBSvS1OsW?=
 =?us-ascii?Q?SnKmrpV//w6TMRh9M+2xfhkMszD23alCjJjthwdNxmsbNMCVmha2uugB9MQX?=
 =?us-ascii?Q?2J5gE5AKW7WrhCULyzEbnazVatyfYS25FnnmC2AW0//3qV5L4fdr8xOZKDIZ?=
 =?us-ascii?Q?PVraQhZh4ZuJyK6RDp47Zcf4xMwlsRvrv23bYt3fNhrPskRNsVBxWXtEwVUI?=
 =?us-ascii?Q?OX5xOiRMpQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2953667a-9333-45e0-9f3c-08de6476f76f
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Feb 2026 05:25:25.3375 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uo/FsEDBUC9hp7SHWbGm64qT0qTi/kVD1YNSm+acykoN5t0gK5ZYs3bPUugm9oJ//FfDw/h5jIwxjDqlIXf/mw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB5102
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-2.31 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 76232EEB43
X-Rspamd-Action: no action

> Subject: [PATCH v2 02/10] drm/i915/cmtg: cmtg set clock select
>=20
> Program CMTG Clk Select.
>=20

Capitalize the CMTG is commit subject
Add Bspec link for register and sequences you are using

Regards,
Suraj Kandpal

> v2:
> - Correct mask for PHY B. [Jani]
> - Use REG_FIELD_PREP() for enable value. [Dibin]
> - Extend cmtg clock select for xe3plpd. [Dibin]
>=20
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> Signed-off-by: Dibin Moolakadan Subrahmanian
> <dibin.moolakadan.subrahmanian@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_cmtg.c     | 22 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_cmtg.h     |  2 ++
>  .../gpu/drm/i915/display/intel_cmtg_regs.h    |  2 ++
>  drivers/gpu/drm/i915/display/intel_cx0_phy.c  |  5 +++++
>  drivers/gpu/drm/i915/display/intel_lt_phy.c   |  9 ++++++--
>  5 files changed, 38 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.c
> b/drivers/gpu/drm/i915/display/intel_cmtg.c
> index e1fdc6fe9762..f5364f5a848f 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.c
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.c
> @@ -16,6 +16,7 @@
>  #include "intel_display_device.h"
>  #include "intel_display_power.h"
>  #include "intel_display_regs.h"
> +#include "intel_display_types.h"
>=20
>  /**
>   * DOC: Common Primary Timing Generator (CMTG) @@ -185,3 +186,24 @@
> void intel_cmtg_sanitize(struct intel_display *display)
>=20
>  	intel_cmtg_disable(display, &cmtg_config);  }
> +
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state
> +*crtc_state) {
> +	struct intel_display *display =3D to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder =3D crtc_state->cpu_transcoder;
> +	u32 clk_sel_clr =3D 0;
> +	u32 clk_sel_set =3D 0;
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_A) {
> +		clk_sel_clr =3D CMTG_CLK_SEL_A_MASK;
> +		clk_sel_set =3D CMTG_CLK_SELECT_PHYA_ENABLE;
> +	}
> +
> +	if (cpu_transcoder =3D=3D TRANSCODER_B) {
> +		clk_sel_clr =3D CMTG_CLK_SEL_B_MASK;
> +		clk_sel_set =3D CMTG_CLK_SELECT_PHYB_ENABLE;
> +	}
> +
> +	if (clk_sel_set)
> +		intel_de_rmw(display, CMTG_CLK_SEL, clk_sel_clr,
> clk_sel_set); }
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg.h
> b/drivers/gpu/drm/i915/display/intel_cmtg.h
> index ba62199adaa2..bef2426b2787 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg.h
> @@ -7,7 +7,9 @@
>  #define __INTEL_CMTG_H__
>=20
>  struct intel_display;
> +struct intel_crtc_state;
>=20
> +void intel_cmtg_set_clk_select(const struct intel_crtc_state
> +*crtc_state);
>  void intel_cmtg_sanitize(struct intel_display *display);
>=20
>  #endif /* __INTEL_CMTG_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> index 945a35578284..8a767b659a23 100644
> --- a/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cmtg_regs.h
> @@ -10,8 +10,10 @@
>=20
>  #define CMTG_CLK_SEL			_MMIO(0x46160)
>  #define CMTG_CLK_SEL_A_MASK		REG_GENMASK(31, 29)
> +#define CMTG_CLK_SELECT_PHYA_ENABLE
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x4)
>  #define CMTG_CLK_SEL_A_DISABLED
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0)
>  #define CMTG_CLK_SEL_B_MASK		REG_GENMASK(15, 13)
> +#define CMTG_CLK_SELECT_PHYB_ENABLE
> 	REG_FIELD_PREP(CMTG_CLK_SEL_A_MASK, 0x6)
>  #define CMTG_CLK_SEL_B_DISABLED
> 	REG_FIELD_PREP(CMTG_CLK_SEL_B_MASK, 0)
>=20
>  #define TRANS_CMTG_CTL_A		_MMIO(0x6fa88)
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> index 6a471c021c0e..a88f013e472b 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy.c
> @@ -9,6 +9,7 @@
>  #include <drm/drm_print.h>
>=20
>  #include "intel_alpm.h"
> +#include "intel_cmtg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_display_regs.h"
> @@ -3417,9 +3418,13 @@ void intel_mtl_pll_enable_clock(struct
> intel_encoder *encoder,
>  				const struct intel_crtc_state *crtc_state)  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>=20
>  	if (intel_tc_port_in_tbt_alt_mode(dig_port))
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
> +
> +	if (crtc->cmtg.enable)
> +		intel_cmtg_set_clk_select(crtc_state);
>  }
>=20
>  /*
> diff --git a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> index 04f63bdd0b87..f6c45bf9d0f3 100644
> --- a/drivers/gpu/drm/i915/display/intel_lt_phy.c
> +++ b/drivers/gpu/drm/i915/display/intel_lt_phy.c
> @@ -6,6 +6,7 @@
>  #include <drm/drm_print.h>
>=20
>  #include "i915_reg.h"
> +#include "intel_cmtg.h"
>  #include "intel_cx0_phy.h"
>  #include "intel_cx0_phy_regs.h"
>  #include "intel_ddi.h"
> @@ -2246,11 +2247,15 @@ void intel_xe3plpd_pll_enable(struct
> intel_encoder *encoder,
>  			      const struct intel_crtc_state *crtc_state)  {
>  	struct intel_digital_port *dig_port =3D enc_to_dig_port(encoder);
> +	struct intel_crtc *crtc =3D to_intel_crtc(crtc_state->uapi.crtc);
>=20
> -	if (intel_tc_port_in_tbt_alt_mode(dig_port))
> +	if (intel_tc_port_in_tbt_alt_mode(dig_port)) {
>  		intel_mtl_tbt_pll_enable_clock(encoder, crtc_state-
> >port_clock);
> -	else
> +	} else {
>  		intel_lt_phy_pll_enable(encoder, crtc_state);
> +		if (crtc->cmtg.enable)
> +			intel_cmtg_set_clk_select(crtc_state);
> +	}
>  }
>=20
>  void intel_xe3plpd_pll_disable(struct intel_encoder *encoder)
> --
> 2.29.0

