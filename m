Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B38C6AB2F3E
	for <lists+intel-gfx@lfdr.de>; Mon, 12 May 2025 08:00:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E9C510E294;
	Mon, 12 May 2025 06:00:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d5ksjCNM";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 84C2D10E182;
 Mon, 12 May 2025 06:00:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747029651; x=1778565651;
 h=from:to:cc:subject:date:message-id:
 content-transfer-encoding:mime-version;
 bh=YAxHzKrp/NhZg1db+4+M15DKPXkkEOUFCOAkEbLXevs=;
 b=d5ksjCNMi/4nN7fhAYWGAc2pK7VIEEr9++TY/esRWf5R0PztS/l+GKy7
 vZWFkbyL00IXgIB0oo0QTmZnSBxz72JA5uSaqeSdJZw2vZb2MO/+Gk5kT
 oP1GARN1IiKnXtQbzl2Pr14ZcQT+3EBxkBbsOvTTzZpcL+XIDUT4K50PU
 n+2cywGXkDk/cia5cqWpRp7/aaeSsy9kejqpDdM+gcbHDFq9DFyjy4iFY
 9FkskGxlfoh03kJ+GDFtEOp+PybphStVy/rjMfWP02E13MeniAsBJ8HR7
 wfjgvwy42Vq+01ln0ayi1GVrbeosNKLIQAncqY5hpk863iS618Vd4/o2v w==;
X-CSE-ConnectionGUID: lm+uDrYuSOuN0yDCRLpwcw==
X-CSE-MsgGUID: n780YbPnRqGzAtCSf1ywPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11430"; a="51464268"
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="51464268"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2025 23:00:45 -0700
X-CSE-ConnectionGUID: k8Tuh6AlTseCr79JaOLb/Q==
X-CSE-MsgGUID: qvkKgxUPROuWoqtm5egdNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,281,1739865600"; d="scan'208";a="137126004"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa010.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 May 2025 23:00:44 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 11 May 2025 23:00:43 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 11 May 2025 23:00:43 -0700
Received: from NAM02-BN1-obe.outbound.protection.outlook.com (104.47.51.42) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 11 May 2025 23:00:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F3biqBTnYWnqZBx3oKJ41MC0LIqmQq8tSbLfej9HVz63MvB2zDdvCjMZ2SVIB0D9XEaszOnE6IXvoRR0YW2Za7aojLC8kj6BRGH8bxXZZjvyuZh+1Px4Ww60jd6QsDFYTlqKv1UP2a/IBZOB0GxZ+dblyaZVIfLO4UP5hcmggiru/IlJLhFH/E3a8VuahF6evFBO+BTqCaj/aHZ68/DnPwotxCO96lmat3rVBFe1JwkjC7WLvV1T2zRft9XSTYvOns/ozH/K8uPitQof7RQxeEmlhfZqipOOBEAFkcNG/QM1IGuAHWnJKMKjVZQ4MbyuijEpe2X3UY2XNuwiACE6DA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tDb8DSsygXSwRALm6MbFk8QlrBXC96m3g64CLh3mKp0=;
 b=qSk6HNQXaYxXfFmdTSjoaAtG109ZZ3HNTe5g9AJmqsGDbcVC473sWlZwnX8BtDk3NyZNhusH7qmrNmexLefoc1oET+8eHy85jbsZqEas8+CqE3ftBROlzAlkqTyCnsGRnngnS3JR8QGTjcOdOQpkKKsLRNCLbw5Q6ZKb1QBtqQmNWRkMyKj86Ro2CEY7g1n45ClPySvKQXH6298DVZZ5UW1tzjhspmPOa1ZhWBqElKPy5nlnEaWux2WVgNLsLvfgAl/+d8phxoBPhInPxPQ3+cQDwxkAnuqDhYbkGvLUtettCo7xzHeS0hCX63A079fcDmTwO0rUt9A+v07rhO8GbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB8524.namprd11.prod.outlook.com (2603:10b6:806:3a9::18)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8722.28; Mon, 12 May
 2025 06:00:40 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%4]) with mapi id 15.20.8722.027; Mon, 12 May 2025
 06:00:39 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Jason Gunthorpe <jgg@nvidia.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "De Marchi, Lucas"
 <lucas.demarchi@intel.com>, "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: [REGRESSION] on linux-next (next-20250507)
Thread-Topic: [REGRESSION] on linux-next (next-20250507)
Thread-Index: AdvDAU6ABHQKVT6yT8GkQoUFdyaDfw==
Date: Mon, 12 May 2025 06:00:39 +0000
Message-ID: <SJ1PR11MB61292CE72D7BE06B8810021CB997A@SJ1PR11MB6129.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB8524:EE_
x-ms-office365-filtering-correlation-id: bfbd8b48-ab28-4097-4ed4-08dd911a529d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|1800799024|376014|38070700018;
x-microsoft-antispam-message-info: =?iso-8859-1?Q?OGiB8D2QjNQQ05nA4RqBbOBVSy54m3hnWvVgyOAuiptBtnveZPu+quoayU?=
 =?iso-8859-1?Q?G71sPUnOs0zpd1F1P+zkczQSlQzcqdV1wPvwIHZG2s8TNqQCuSXgmaXMyT?=
 =?iso-8859-1?Q?zwM3aGUHToLd05ABHP7FARA9FuArQ8rRmsTh10Lsq8Kdx3NUYzNJzk2SDg?=
 =?iso-8859-1?Q?bY4VpaQ8tiW9QsnJj2gA+aoU5KVt5A6+1uPpYcKdq445Py+nZG0PES/z0C?=
 =?iso-8859-1?Q?dlxEGBQ77JASzBYSooNbfFOuPx0/bnK7ZEXl+0oXV4D5ZaWt9PiWXOg4+U?=
 =?iso-8859-1?Q?9yF2AvQLpYTZKezk5thS6lQ9Oad1MBMxGHq3b67yUvFUfqm1i0+czB8pap?=
 =?iso-8859-1?Q?vdCkOE3DqQRzcQw7bXNzjqHkzOItD2cbjVRVQ69/BUWDYcWl/dCsJ/PrBN?=
 =?iso-8859-1?Q?mbCZXoHAyJKF1QFpaT//D1f4pAaEWDX6UbccO+o8p9FSsMnRB62EH+zE9f?=
 =?iso-8859-1?Q?ADQmngkesCyu4PV+TQoWgTKgn/dFLqZXKxo7oS/HyGGSPlMROr2ASAqYWF?=
 =?iso-8859-1?Q?qaUBhiX0aS7UubZXdonfArR7qyRx6sRgEyIEwVHT1gGP6Kb5y7S9EXc6kF?=
 =?iso-8859-1?Q?IdYG+2MACqDJUc0+7JPmAcMt4RQaTHzr6rxL44uH0T/fdCb57cEyHyhwPY?=
 =?iso-8859-1?Q?9/mmoOT6Vx5B0q/A8NwEGhJ+RjkD3fFCb1O53Ern+f/EyyzzqOW8W+5/aH?=
 =?iso-8859-1?Q?/0J0y40xLbo8VQfWyeYmEwUAFBbd10Yx/PgLnfYNNmJba9MGKJM3S/xqx+?=
 =?iso-8859-1?Q?uqZ/c27TemDN8QuK/lHkSpUESafZf8e8T4TK0EOr2P4iHkGG3bxOhx0MVd?=
 =?iso-8859-1?Q?P0w4ZXEn9moCbB2S801gUrr6NWuPDJ5v34/wPGevC0fs5zg9ou1R0Q7MED?=
 =?iso-8859-1?Q?rrdnGUyP+9zB3W/8wkQi8xausHHlcMUKIefUHpzkMzXuKTN3Qz87l88GPJ?=
 =?iso-8859-1?Q?ru3DNGB0dE6cbS90WlygnWbhKmYsP10i5hMVbX3Er873bBe87E2AQ93DZQ?=
 =?iso-8859-1?Q?iD7Bva+jAH0tzbZRr/tJx2AQyT2c01PXTWKQz3HnYq+p2VA/7U7dY7+hqo?=
 =?iso-8859-1?Q?32Q0hpkbtVGUxBEI+A3hJPMVDgJnSomBm2/bWf6GIw+qHjneVec/R6ezLM?=
 =?iso-8859-1?Q?HjxWN2eEiiEouEHnEy1oeYuQgGYNSlcS/52i8JT/rPXYu7OwZlw+2Ls7GS?=
 =?iso-8859-1?Q?GqZ2HVSZgf5rwJKdtTBpvR8vZLWvAVCE3Pc4BFEEuwuqbf0VdUO697ASIX?=
 =?iso-8859-1?Q?4HyOR0U4/syydAYnwDNAHM+ZTHS+ckFmz0VUduJZKTIKhErfjcollM1ixL?=
 =?iso-8859-1?Q?LRvY/Yyo1f4/1ONQspd+/YTw+ojLDL1plmunDS54A4HBbbnq/RVPAkCsaM?=
 =?iso-8859-1?Q?eGiv9UN/f0QFSOsTRjSTfNrdP6NlNaOKn6ZuueXV75LmqaXyQbrlRMTeMj?=
 =?iso-8859-1?Q?naVUJl+j0if7QlKS2ZGBXjmBHV9iYmCajgVzJi+AeEbeOxVdyh3GiHSqq+?=
 =?iso-8859-1?Q?VH4nonG3f+BVZbBOiWFifx?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?iso-8859-1?Q?aNvqa2kVuR+Xujaa/krXTlVbpGTEQ0izSPAhKxp9UGGdr2Ccv/ja+PuSyD?=
 =?iso-8859-1?Q?qpmAoh7+aO98oc8GImUdvRXf5O4vU6tfXfWoTqLU8LCgZZFJnGKgBD85sp?=
 =?iso-8859-1?Q?P9bkcuACaAcZ+E0nJkMHA4jBLyeOONFNSDe3guiT5XR2gxcfQj5nZT2Kyc?=
 =?iso-8859-1?Q?HrgPPd7rsi51sZFCCE71M5FMba4KTdQkuk7JoFIIP4b+utjmeFxFmP8WA+?=
 =?iso-8859-1?Q?5/K3f93QjFqVB1bN4DDy/++BQMFp6ujEAWR/SFZEyt+3wN4L2hiiXnoTBZ?=
 =?iso-8859-1?Q?iy8z6Q51EqTYljFY7yQHjMlSdHtkmnCT0vnVsOOfLmSLku8VCigQLOpyKi?=
 =?iso-8859-1?Q?n3uIXyCV1dFTtXns+xHTpcLfxJb/qhqzIJxYGnM0bgKCGwLKfA/uFMU/rL?=
 =?iso-8859-1?Q?yPIpB/azCE/U/xhjaQp3sD780QsH4/B2F48Uy/iri8VXROjplqlJvtokDV?=
 =?iso-8859-1?Q?hcQKrq+IJzyFtVeccqcC1fBzeDrP4WhH/EPfhRgfqyqOINcgb2txgXQ28K?=
 =?iso-8859-1?Q?i4JXYAE1KBYWa5W0Lww/xtqS6ja8Vcnta5utGarxkv1iecGeKFL8ENg6cR?=
 =?iso-8859-1?Q?IZepdK6SkziijyoKiRhOU5LQ5xXziHTXudTNJywqjIo0YplY4dmqUrhmu7?=
 =?iso-8859-1?Q?moTH5oGOTDoGOeM5ehLqEhDdxuXXnpB5nrUUaYVcYz0B0Mh4FvQA3ua5BV?=
 =?iso-8859-1?Q?3Du9eOyY6PGioNdoU5119CauKjniF7pXLO7JgjLZQBqf7+a9b1nFej24+3?=
 =?iso-8859-1?Q?S6pfiOC+WOqRnCrfV+hV/DTHuAETiK4JIVrcEq/Y7l3ihwcyhuVp3anWaW?=
 =?iso-8859-1?Q?iiW3/2gAkPqhBEkDnKnW1Qt/aWZnRJCTU4HcBiCoS4+RSUrT/WAzlEf9a5?=
 =?iso-8859-1?Q?TKkvIJAQphhScordQ9cqJYyKTU3QP12RW8kTQkksLeO+8Qime5zGqElOih?=
 =?iso-8859-1?Q?GPUmJISjQ0D9c8JY9v11As+pPVAvgpk+wi4VmlTn/L8e/MnwWKejns4/98?=
 =?iso-8859-1?Q?HRevd9cd5RxrMVfw/a2okgG1smS3BFGYjgXRsTQxICaidaEPep0vtAVsQ4?=
 =?iso-8859-1?Q?kPr3wVzi45LJG+jIwa3X7jLijkdoZUFq4aivpdDfxrQZ4eCyFdPjKJBZWN?=
 =?iso-8859-1?Q?f44oIEvDxJjO4ZQuxWiTDxO2Z+Bt/+jbMh9/xFabC8BBHMWgA/GBnAYif6?=
 =?iso-8859-1?Q?G4UtPImmL88WKnis1TTrh5KvRcPC0Q92N100J/WwfydRCpuG8c/IUKin9S?=
 =?iso-8859-1?Q?bKXHqv276TKqvQ+3PesB6FDuo0Q6u6WKtnxLtSPXVyofKtDh7e98mhOF1H?=
 =?iso-8859-1?Q?7cEesQO/W2IgG2fq6vkNji44tt7fCsjPdAz+LnBiZqpLLwfqcsZJjJku+U?=
 =?iso-8859-1?Q?M8W+pT1SxPwjoaOtm+cmWUzrBZmPtkBInS228YHPOJNHqWv/SON3UqBAr3?=
 =?iso-8859-1?Q?hL1jEjhGbKZkLh22UIltRJFTRyEo58eOwSZxE4E12L7xRID8VUCdcfa7BD?=
 =?iso-8859-1?Q?qmEmrhJaTU9Sy+7axlyoRB79NmBgUi34GDe2dwTHSbyoyAhEaGbj15g3UT?=
 =?iso-8859-1?Q?HRe8YnNf55vRVxL8UxIFBgrGOZaXsRYKqR8EbKj/7M+exJZe9NrS/jPN8z?=
 =?iso-8859-1?Q?RSKGa/qyf3vF3N/BQTHgqIamHnzWSvfv21Z+Xipr3NwjX6Y+hgpSSWOA?=
 =?iso-8859-1?Q?=3D=3D?=
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bfbd8b48-ab28-4097-4ed4-08dd911a529d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 May 2025 06:00:39.7197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wodtpj7hbe35nEMnmLWp1IyWLdwi/clo4OTCeB00UrnHURo60X3i8T36zknxJg96AwAiGfcJWMXxOead5KNG1YcZ+Hyhlge+9PElsI8qPVI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8524
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

Hello Jason,

Hope you are doing well. I am Chaitanya from the linux graphics team in Int=
el.

This mail is regarding a regression we are seeing in our CI runs[1] on linu=
x-next repository.

Since the version next-20250507 [2], we are seeing the following regression=
 (currently being masked by another regression)

```````````````````````````````````````````````````````````````````````````=
``````
<1> [47.242057] BUG: kernel NULL pointer dereference, address: 000000000000=
0698
<1> [47.242061] #PF: supervisor read access in kernel mode
<1> [47.242063] #PF: error_code(0x0000) - not-present page
<6> [47.242065] PGD 0 P4D 0=20
<4> [47.242068] Oops: Oops: 0000 [#1] SMP NOPTI
<4> [47.242070] CPU: 10 UID: 0 PID: 201 Comm: kworker/10:1 Tainted: G S   U=
              6.15.0-rc5-next-20250507-next-20250507-g08710e696081+ #1 PREE=
MPT(voluntary)=20
<4> [47.242075] Tainted: [S]=3DCPU_OUT_OF_SPEC, [U]=3DUSER
<4> [47.242077] Hardware name: ASUS System Product Name/PRIME Z790-P WIFI, =
BIOS 0812 02/24/2023
<4> [47.242080] Workqueue: events delayed_fput
<4> [47.242083] RIP: 0010:__lruvec_stat_mod_folio+0x9b/0x250
<4> [47.242086] Code: 0f 85 4e 01 00 00 49 63 d4 48 85 db 0f 84 5c 01 00 00=
 0f 1f 44 00 00 49 63 86 80 a3 02 00 48 8b 9c c3 50 09 00 00 48 83 c3 40 <4=
c> 3b b3 58 06 00 00 0f 85 94 01 00 00 44 89 ee 4c 89 f7 e8 ad 64
<4> [47.242091] RSP: 0018:ffffc90000314d38 EFLAGS: 00010002
<4> [47.242093] RAX: 0000000000000000 RBX: 0000000000000040 RCX: 0000000000=
000000
<4> [47.242096] RDX: ffffffffffffff00 RSI: 0000000000000000 RDI: 0000000000=
000000
<4> [47.242098] RBP: ffffc90000314d68 R08: 0000000000000000 R09: 0000000000=
000000
<4> [47.242101] R10: 0000000000000000 R11: 0000000000000000 R12: 00000000ff=
ffff00
<4> [47.242103] R13: 0000000000000027 R14: ffff88887f352e40 R15: ffff88885f=
04b010
<4> [47.242105] FS:  0000000000000000(0000) GS:ffff8888db212000(0000) knlGS=
:0000000000000000
<4> [47.242108] CS:  0010 DS: 0000 ES: 0000 CR0: 0000000080050033
<4> [47.242111] CR2: 0000000000000698 CR3: 000000012d335000 CR4: 0000000000=
f52ef0
<4> [47.242113] PKRU: 55555554
<4> [47.242115] Call Trace:
<4> [47.242116]  <IRQ>
<4> [47.242119]  lruvec_stat_mod_folio.constprop.0+0x35/0x90
<4> [47.242122]  __iommu_free_desc+0x64/0xb0
<4> [47.242125]  iommu_put_pages_list+0x27/0x50
<4> [47.242127]  fq_ring_free_locked+0x3f/0xa0
<4> [47.242131]  fq_flush_timeout+0x81/0x120
<4> [47.242134]  ? __pfx_fq_flush_timeout+0x10/0x10
<4> [47.242137]  call_timer_fn+0xa1/0x2a0
<4> [47.242140]  ? __pfx_fq_flush_timeout+0x10/0x10
<4> [47.242143]  __run_timers+0x231/0x310
<4> [47.242146]  run_timer_softirq+0x76/0xe0
<4> [47.242149]  handle_softirqs+0xd4/0x4d0
<4> [47.242152]  __irq_exit_rcu+0x13f/0x160
<4> [47.242154]  irq_exit_rcu+0xe/0x20
<4> [47.242156]  sysvec_apic_timer_interrupt+0xa0/0xc0
<4> [47.242160]  </IRQ>
```````````````````````````````````````````````````````````````````````````=
``````
Detailed log can be found in [3].

After bisecting the tree, the following patch [4] seems to be the first "ba=
d"
commit

```````````````````````````````````````````````````````````````````````````=
``````````````````````````````
commit 13f43d7cf3e0570004a0d960bc1be23db827c2ff
Author: Jason Gunthorpe mailto:jgg@nvidia.com
Date:=A0=A0 Tue Apr 8 13:53:56 2025 -0300

=A0=A0=A0 iommu/pages: Formalize the freelist API
```````````````````````````````````````````````````````````````````````````=
``````````````````````````````

We could not revert the patch because of merge conflicts but resetting to t=
he parent of the commit seems to fix the issue.

Could you please check why the patch causes this regression and provide a f=
ix if necessary?

Thank you.

Regards

Chaitanya

[1] https://intel-gfx-ci.01.org/tree/linux-next/combined-alt.html?
[2] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20250507
[3] https://intel-gfx-ci.01.org/tree/linux-next/next-20250507/bat-rpls-4/ig=
t@gem_exec_gttfill@basic.html
[4] https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/com=
mit/?h=3Dnext-20250507&id=3D13f43d7cf3e0570004a0d960bc1be23db827c2ff

