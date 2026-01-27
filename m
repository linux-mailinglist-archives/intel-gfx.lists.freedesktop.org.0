Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPfDBYikeGmGrgEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 12:42:00 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AC5793BEE
	for <lists+intel-gfx@lfdr.de>; Tue, 27 Jan 2026 12:41:59 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 869A910E061;
	Tue, 27 Jan 2026 11:41:57 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UkMdY9BL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 41BC810E061;
 Tue, 27 Jan 2026 11:41:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769514116; x=1801050116;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=ylNt0d8DQtva0AZvulw/cbLS1UEP3tuPx7xqWYXvVU0=;
 b=UkMdY9BL7wgMb1dCVLn2SQVs5duLy9gp7xV3JJvPyPaeGcdOiaubwPqv
 NTcgielFoJGzX6/V5db7Ume4zalLX+rtD4nH+hIDrlBM4wo0wtyDupVpE
 zSbhzvdelmvI56TZkAnvJPCHCEPR4s3jLhil2p5FW9iNqPUW0SjVvmSAG
 16nBlcXl1EE82m7nj1/qT8ErEE8shimKj1vyMoQzIAJPTXl/455ti1W/3
 BoQpFcQxljXLqeiOou/nDrNA17azEwmNHCUSASiOFBybtK2/tNM+IoknO
 4AbLUfPsm42kkh/Peb1F/GSD7Ff0D+ocvg5d+gqtrOrkAHqxkjuLK2taH A==;
X-CSE-ConnectionGUID: h9KOyc6yRQqQKSSK0q3hvA==
X-CSE-MsgGUID: 7S4j1eZdTdKvjtgitb3ktA==
X-IronPort-AV: E=McAfee;i="6800,10657,11683"; a="70609579"
X-IronPort-AV: E=Sophos;i="6.21,257,1763452800"; d="scan'208";a="70609579"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 03:41:49 -0800
X-CSE-ConnectionGUID: R9iScxQsSJyRk1JXCFjVvw==
X-CSE-MsgGUID: wVar1soqSei4LEHx548ebw==
X-ExtLoop1: 1
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jan 2026 03:41:49 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 03:41:48 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Tue, 27 Jan 2026 03:41:48 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.40) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Tue, 27 Jan 2026 03:41:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EjvCxTsRjEYyO41n9SkwIZ55xU5f0osSDsCBevWTZOCPMRX+b7XMbv4NmugEbEWPYTeq1CyST2H2A3HCsh99kFSvuNl4mDgfGOi5BMf3pDhwjxmAVuOiS1+sL5RCCrsyIxIT7I3iN56vV4gtIFwairvgE7YBomyo3qhM5yxOQ6b9I/kf+jd2XFaJa6yqYChci3GwYgJ1nffvH0JfXBmGPYKsoKXelcUvVRpKTyA7pT354QtDNnAfnfZ1XDUb0x+xBcuBt6Yd0F2rLXdOnx5C5SJjGO/FOWHGfnNRaWkuF4O3xsKCKIXa65gLEOY7D5jC/janrx+uWQgOFWPRSFvVhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PyoVkdRh7DPfHyfb87PbLH50fPqvFpPuZfcFBorNqGc=;
 b=M0wCikOy+XafdM0NEz+rlrj4N0pBY3zRnT+MTt5TLG83sg7E1wK87UJu5wUHK4w2TZNjejYuqPO2lXC3ntbashqR3H8VGtSO/NAsooVKz4ozJI5dYBHcsGQencfs6Cz+ofRJhzm0/yi/e9nTfzaTfcjwp0aFNOeTgg7GAgD0VJh/nLfF5nV9ivn/b4oT6kyMPctzg53XU35t+iFj52x/VIZWQtcY0G3aydDMHW0dKzYBAoQxYn09XoEhtg8X01IjwaRh84i/lndqx5JExxQheMLpaeQcRu+4YAcCNSD1inlpPXZ5NS0YqrKnU9ftrgpXDhHTgWfZC/8Et3NI1WmWkQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by IA0PR11MB7283.namprd11.prod.outlook.com
 (2603:10b6:208:439::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.15; Tue, 27 Jan
 2026 11:41:41 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::7cc8:75c9:22c6:3c66%7]) with mapi id 15.20.9542.015; Tue, 27 Jan 2026
 11:41:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Garg, Nemesa" <nemesa.garg@intel.com>, "Golani, Mitulkumar Ajitkumar"
 <mitulkumar.ajitkumar.golani@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Topic: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
Thread-Index: AQHcj2KIqBjPR2Lt0kaY0Wdnjuk0M7VlxF8AgAAgGrA=
Date: Tue, 27 Jan 2026 11:41:40 +0000
Message-ID: <DM3PPF208195D8D64885F3CC7DBFA48E632E390A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260127074644.991015-1-mitulkumar.ajitkumar.golani@intel.com>
 <20260127074644.991015-2-mitulkumar.ajitkumar.golani@intel.com>
 <IA1PR11MB64677E81F84F83BAE617A7D9E390A@IA1PR11MB6467.namprd11.prod.outlook.com>
In-Reply-To: <IA1PR11MB64677E81F84F83BAE617A7D9E390A@IA1PR11MB6467.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|IA0PR11MB7283:EE_
x-ms-office365-filtering-correlation-id: 09db5de0-1553-4756-408a-08de5d9909e2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|1800799024|366016|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?wNMr0ytppJaDYEhqWEac8m6kGtM3hT7jUXPApb5qirRxgB7xwm5yLVsd4t7N?=
 =?us-ascii?Q?eYb5xGejTpxPONbMBoBgQRIQPIAlTh256pbahnV7H7YxE6mcD2v7MUUwcjoO?=
 =?us-ascii?Q?W23PYhXgeuf7Cagtg1w+q85eaG7O0uUdg2igvDft7hEFguOz/xLAc3eN5J4F?=
 =?us-ascii?Q?lJYYioLz4hFJB8/Hjetqzz61hzTHmioRmn1bprtiD8D1M+60dsaJZ19/HlTf?=
 =?us-ascii?Q?kOISXtCtc1nxN+/APRCJ1Ft2k43umMEKR5yieyguBclAFWXWGvjSJjFB4U/N?=
 =?us-ascii?Q?Akp5Z71BNt15kPtBvSZKqhWodrTryqcGbMXnB0Tsfrn0bMXb6jk1X2KVBi67?=
 =?us-ascii?Q?oxe5gDOOWtuXbwGb3PCCQqgkWhXLm8bZ8ySXyla6yb67GOXwLdJ+T8BYEcEq?=
 =?us-ascii?Q?oHTdOiBILOWCQfNZQHjUlbQG3cnmtp1M0OeyBYLpnELvQ38zgal0QdLGgXRv?=
 =?us-ascii?Q?o+eMDOsrUuD1ilikXU9Is/i2vnRWWR9Wclftp0diMYqVEZ2YHoQvG23eF6MC?=
 =?us-ascii?Q?vsfxx2Hm7GWc71aeR6mAzyD8f/57AUd1ZbVCaufOK5fjbqlSVKJ2CGzQm5/l?=
 =?us-ascii?Q?C12PaaaOVpeGPHw5Gi4GG7fmvhYihJCdlRpnVSUZGIFqbENRsIzNnxS7elbx?=
 =?us-ascii?Q?ZykMPUGhxmiK3r3dJ98wQ9/DVhDc7jwj3CGz37OyepCgW+Kvhp8JI5EaPxgV?=
 =?us-ascii?Q?qLIqdyXiv8OshUSpNTRUZ9tjt3L7eWAoXKG1b8CjHMK+zZWGkO3Oo083i9A7?=
 =?us-ascii?Q?Fb+zFtzpgvTQ0PEm4WFzQkGPnFyIU/nzwoZ4pO2EAsufO4QFMlK/mSU6HKBI?=
 =?us-ascii?Q?Yoydk1L1KmpZ7Z6cnbj6q9ChoX29uEEjLM2nddOM7CgicWwclqPlXz8lzK4d?=
 =?us-ascii?Q?JZg/+jMOwuYMK4nYYIT6FU7HkCBepmGj1pUeb+sYmhKbHOs6xPDpZ1ZRJB17?=
 =?us-ascii?Q?ImmFcXT0GYqXLIswP6TDj0ARxksTWNMijGz732L4K/pkKpVtZMvSRxBcwcDs?=
 =?us-ascii?Q?mC6lI3pSi3S7MicSnVPByaeI8pug3dKEffMXhA/0sPOswaHM6p6qNqbl7x2u?=
 =?us-ascii?Q?5EXlYKMNe5rY2SCnWD+LKcxaHRsxd04J2BmGclr7KCN7x6rtfYx7L8AwGAB9?=
 =?us-ascii?Q?8jKGYTGu7nOc26mdPWKJAvJ5qC+hhua9aVSNUi0pnF3ob5LEP2MKJtEOQz0z?=
 =?us-ascii?Q?hEzmp6JzYRF6emNCAp/jOleyNejgiNtO3lb8KFw187i+Lax6Sz3xo61jW30t?=
 =?us-ascii?Q?lUblrlTEEwGMJWWx8p6yHT3WEysmGFme9HxNBfJAJKSpZtng+2NrpKIa/Xal?=
 =?us-ascii?Q?v+o43ei2ES+zDKeBtfpOMJuAz/jvzFvsP4U7R2G+RQXgMMF/Wqm+P2X68QI8?=
 =?us-ascii?Q?j0Ogikv5NoOYAe44BZ7w9Px4FongHNOxHIVjiTX0vclKqQg7ALnUxHt2R7dj?=
 =?us-ascii?Q?23teZe6LWsBy0mTsRxpvmTCDcmKWmtqIDOAOC8Oq5QHSgRPPUsm2rtsKLN7j?=
 =?us-ascii?Q?8UhncMAwzScTbF+ii8GIFEuH+laTi8BVv45n8AaEoAV4yz7TPFmffLjKqQVp?=
 =?us-ascii?Q?iEptZPBKgsoni6aSJIQvXIGn7O1UYJnGWKrKT/kgD2DxGECCxfBJBPQVVSmC?=
 =?us-ascii?Q?u6nplHkYeC4MzqdE2Qyk/b0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?+bK5pbnFBhuY84b8weV8n6ON0j5Qf1LXZPE1w3uX4wh0fj58NOL25dpD68H3?=
 =?us-ascii?Q?qUfMh7AX7u3OWM96O3ftRFVHynyTzrmYjZYiYV58gzhfeijBeiDdzQtYWtD4?=
 =?us-ascii?Q?XZf116EDwcx+aIkY6R7eK00H2oSoYPOHyV/EcoFVVowfsffUMdR4QH+ZbxKY?=
 =?us-ascii?Q?kpakYCOJZ/nbC1e2jDPeY0EWt4NxxKucnjVEo5XMR3McFsGrT7usgnG5znBm?=
 =?us-ascii?Q?lH/JYhamDs5c5htXmUH4jmR19BPGbvJDj+y3vQuP7KqpmI1d72paHNrhMSja?=
 =?us-ascii?Q?sqO8XRdfahN4fAfs14jywlRB2E+v8CgfdzNsHjZS09aV7NyevLmfckGkxkwk?=
 =?us-ascii?Q?YU3C2zoSJbINsASSQzYxjhFQ67DIHyk6EkS+AcKVA94vyPt0MrUFFIum1OTa?=
 =?us-ascii?Q?nNmjbwcdMt1NPLFq/fncZfZ6w7NkoXwJxDicRaFzmq8skLcT8ADptJpogge5?=
 =?us-ascii?Q?IKRmm7VSECRBPBp0MllYlPAIx9SkYlcGjiAjxjjpqlOQXJ7FUrJkibpQzuQX?=
 =?us-ascii?Q?PiWQh8TEMpERWTaHcxM/KB+hNJGZGc9BwMfF+UPxbfXdWzc3JYXPBj2bcz1O?=
 =?us-ascii?Q?5NLijSjq0WcpfO7Ul5VtSSEVic7k/ramofH8IVdBn3vq4KY7gVniNN8mqlJl?=
 =?us-ascii?Q?SxXKRYAR96QvvmdR2q+bTlCo+nzkCJKIALH3KpCJDV6N2x7htXKmUR6o3MnU?=
 =?us-ascii?Q?66XaLp7EkchmCmF3uwTGCIgw7CWJ8WvVQAUcMTIA67zYNBo9pluLSKSm8RfP?=
 =?us-ascii?Q?eNIfqkBlefXV4nI9y+gU0SR3HVcX2yFY69tnnRt1yDm037tExAOfiZOyp4/v?=
 =?us-ascii?Q?n4MWp+L7zbLIwiEozG+yD3Keh8Ww2Yzc+LL9pXGkFsM7kMI35B5P8YgK9jDp?=
 =?us-ascii?Q?6YXUVuuUfnq+XgZZTHDpjEZ/70Wj1pXJvdUm4SA1m/v6XSqd0UEn8iWDKueA?=
 =?us-ascii?Q?A9hfToTe4OvR/rUUZdaYtLI9jZXYu5b7t0ZigbZAmqgM6ZYhQkUbt3bDM0CG?=
 =?us-ascii?Q?n3sMZM3MtDQNiY8F9T+QTwgs5x+0FSDtrnSwKPKFsftbCXnyzDNHPb2wDa9H?=
 =?us-ascii?Q?0lCe6rVt22gTNI5su/1DQOz0ymb6UW1ynkhr6IVcJAdZYNb53W72J+Oh0VO+?=
 =?us-ascii?Q?6Q6h3EQIC/WplvyjKWef8lS/FYhZNkD42g90659ZXA2WoAEkBAYpxF547uim?=
 =?us-ascii?Q?THzQhaNEFtMSLSrFc8+o/ZTcUXUxyVWCEn+MZnq/MtIK235Flye0+EVJroH5?=
 =?us-ascii?Q?JAnPaN2PMTj2pIvC38dLUz8elSqq3DVdwUNwIbvqRnRnoDaN7++Xv4JqzzF2?=
 =?us-ascii?Q?e6JWNK6y4hCwTK6z8QDCcsh2Umn07WHYXIrzEIKfdJmD74P68Z7JKjLyxyiz?=
 =?us-ascii?Q?/7jdNRN19m/uKvCJBTsrUftG0R5KUo4raPM+euvzgUcGvmLDsixF+bCxRn+V?=
 =?us-ascii?Q?mbk27tcmB7evj1OVC2WcEp20oR0VtnNNOLTDTxJYS59/WPiE6d3DJnxoed2w?=
 =?us-ascii?Q?7xT7WxDa8pM1H27t+hfvI0mp1ZdFzxIUwSYiLEoQH7KLJ02WKas31Fp4qkW2?=
 =?us-ascii?Q?r7QwwzkYcRX6VdLDAWNRLTKDoqduD7fGepfo5RUoSOe+EqK1CyWKTFqo1voX?=
 =?us-ascii?Q?A0RHVJpsYl9JeyHN3R5D5DUmBAfqxPzQPoTqJ3YBFnyHnv9LBkc9M+kJBKGW?=
 =?us-ascii?Q?+CmrW+6DGBEbXLpvt19JqmdQFFWCMLWnqbcIhAwb5d528h2FwN7dAelxrleX?=
 =?us-ascii?Q?c8Vb3tF/PA=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09db5de0-1553-4756-408a-08de5d9909e2
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jan 2026 11:41:40.9883 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZIj7cmEGxcGSRn4DTmjiUfINyHGQ62lA4QlUS+t+YrUO0BhMmFM7jai4iKVfNtuRs/AmxSA8+KsaJ5YRi+ZDeg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7283
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
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[intel.com:+];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 7AC5793BEE
X-Rspamd-Action: no action

> > Subject: [PATCH v2 1/1] drm/i915/display: Implement Wa_16024710867
> >
> > Defeature port sync feature for xe3lpd onwards.
> >
> > --v1:
> > - Use xe3lpd naming (Suraj)
> > - Use IS_DISPLAY_VER (Suraj)
> >
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> > b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index d8739e2bb004..a3e6f9a31b20 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -4588,8 +4588,11 @@ intel_ddi_port_sync_transcoders(const struct
> > intel_crtc_state *ref_crtc_state,
> >  	/*
> >  	 * We don't enable port sync on BDW due to missing w/as and
> >  	 * due to not having adjusted the modeset sequence appropriately.
> > +	 *
> > +	 * Wa_16024710867
> > +	 * Deprecate port sync support for xe3lpd+
> >  	 */
> > -	if (DISPLAY_VER(display) < 9)
> > +	if (!IS_DISPLAY_VER(display, 9, 20))
> >  		return 0;
> >
> I guess instead of 20 it should be 30.

No it wouldn't be since the range we want is from
[9, 30) where 30 is not included so it would ideally be (9,29)
But since we jump from display ver 20 to 30 it would be IS_DISPLAY_VER(9,20=
)

Regards,
Suraj Kandpal

>=20
> Regards,
> Nemesa
> >  	if (!intel_crtc_has_type(ref_crtc_state, INTEL_OUTPUT_DP))
> > --
> > 2.48.1

