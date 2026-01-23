Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAUOIccSc2lksAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 07:18:47 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C961B70D03
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 07:18:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 54EDC10EA4A;
	Fri, 23 Jan 2026 06:18:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="MOx1yhFq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C4FB910E268;
 Fri, 23 Jan 2026 06:18:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769149123; x=1800685123;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=QQ7lcwcE0pNQUXlyZoInePIYLklZE3hiw+pG+k6mmWc=;
 b=MOx1yhFqegcZnk6D5M8MO+jhRvtWA3C34DLftuSzOSGsbB+8kffwad5I
 EtlqE9ZHaT86pdfLVO7hT1GR1giZ2O0ucIwLNKBF0teO3OCjhhfxFQhql
 oRmP4IYLFhng9n5idU5/GMfOgnncMloiY3XFxMrrz+OO+6b0fLDhT0ThF
 Gj33wkyyL8ZSA8EW9BiI7EbLfJIDVAmMp6F3YsQY22oMZ8uHZz3WQUGxz
 1hRICdIkOlde01gfJgQwwws1fswitqBCYFaTmwIZCAcIfjoUGLl3E3b3j
 ZbVMIXhEWmNOHjV7ig8iw5HHTVnx69feoY8z4YGuMb4Mr35HXtzKTX/SP A==;
X-CSE-ConnectionGUID: sNLraiHrQhGjZMu9X2Neaw==
X-CSE-MsgGUID: y+zKiqP7T2OUd657Kpzx8w==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="95872359"
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="95872359"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 22:18:42 -0800
X-CSE-ConnectionGUID: uuXTVZHAQVajdcBz0Oq95A==
X-CSE-MsgGUID: qQnAEN1USEuc0uWI4SnQCA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,247,1763452800"; d="scan'208";a="206764446"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa009.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2026 22:18:40 -0800
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 22:18:38 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 22 Jan 2026 22:18:38 -0800
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.38) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 22 Jan 2026 22:18:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PTIPzPnOibQKU7Ky/ZoCgFRO/cjcmITJtDR99h3ssS6ktC/SXz7F9FRNDm1ne1bzlELMLfnRcG5Nd4Us2y2MVv/RHH2IHylpKlqE6F3Og01sVmol0nePW8P8q/W+2Pq8gK+Y4dNiAIfzvufBOtGKy2Ar0/7+9pNb6nR0JyMRIwgfVG8rvrKFRtX2Q6C0+M1eS+0HZtH8SSiheAnRAxeQGX31BhXm8Sk2C0Zq+7F1u25r/E8xYga+1Co34+rBSUQAdenhG9bZXBsOhyhD8GNI4AGVoEuM9/JheoCrIhsbjGnDI166Zo9P+ptnlwRBpUU2gS466DD4TOsxBqnrhvPScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=YK75c2GI/eqYQlLh6fq+fPmoeTQQM5OOVcgunku0xBY=;
 b=tzy9GMvoIaeV3RbvVOE4oCxA5C4fp0vU6/XM62UBeJl15X8EmpZ0koHvkXktwEj4sBD9fD7J5+r6OfW6DKkrjcizgHIIF1ERrE4TDQLwxkRS70i6Cw4/ycrcHW5pePyc+HZjaTxpx1SDWpeAJSo6W8QeQS+W3hBJkXf54D9WKZS3/IYv/Q/5OmGfg6rReclqfLSlZ9juOpe0XfZE+JuAg9Ycz7Pa9SuEWxcvHhiUYfDfzybojkUb0rng4DNJnE4ZSFBgDCFUE3dAHGjG7+z0i0k2SMTvLVue34yxvor4h5Ywzm9jdGHJJblP6CgdNtei8YCDd0rGeQDD7gMyaOtpYw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY5PR11MB6344.namprd11.prod.outlook.com (2603:10b6:930:3b::6)
 by BL3PR11MB6339.namprd11.prod.outlook.com (2603:10b6:208:3b3::21) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 06:18:33 +0000
Received: from CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd]) by CY5PR11MB6344.namprd11.prod.outlook.com
 ([fe80::f6ad:9f7c:3812:8efd%6]) with mapi id 15.20.9542.009; Fri, 23 Jan 2026
 06:18:32 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915: move GEN7_ERR_INT snapshot to display irq code
Thread-Topic: [PATCH] drm/i915: move GEN7_ERR_INT snapshot to display irq code
Thread-Index: AQHci5v6hG1RsRA/LUarJhe3lHKgwbVfSM+g
Date: Fri, 23 Jan 2026 06:18:32 +0000
Message-ID: <CY5PR11MB6344156110390114E8974C33F494A@CY5PR11MB6344.namprd11.prod.outlook.com>
References: <20260122123759.1701492-1-jani.nikula@intel.com>
In-Reply-To: <20260122123759.1701492-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY5PR11MB6344:EE_|BL3PR11MB6339:EE_
x-ms-office365-filtering-correlation-id: b5b70374-2fc8-49c7-b3f2-08de5a473bc2
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?AbZzCeTKtniJ7gtFiZGkV9HAs9DaOFyr4UZLCulYnkvPZisGcFJxQ+cK7Duw?=
 =?us-ascii?Q?Jj7fDGORM5jo66n3wI0G15o2yZx2JZXpEzZWaFffotj6vrknavMej4wmiqMg?=
 =?us-ascii?Q?xBU3cBUJH+QMAabpmNL7PbzMcjpBNh9nzOkWPe5DwnDQvAFfFgqdpXqIf3cY?=
 =?us-ascii?Q?sFvZqtuYSJmC3Gdsi0WCdRahklxWhHx5YzO/hbQCaZDuclA5Mr2y9EG50D8n?=
 =?us-ascii?Q?3vBowfwgNb4RwK2Le6ffwhaHkp4i1JpWGaaVUEXhEWHInpwUYx8BzKVVL0Nx?=
 =?us-ascii?Q?Ra/2FKcveCPuQ7e2QfgfKQIU1PeCEC8WXWh6c5DE3hhVn6XlGZ9ctU6NEezE?=
 =?us-ascii?Q?S8Q4wF3/1pj1brkJ4LAiYBR0Mp8nAlOSlbp7J1iCShB1/t02NTmlfgtwVTn0?=
 =?us-ascii?Q?VCT2Uyv3FMsUJlOTrgXGRVEnTe/B3/af1K43eFqnrLVXUFfSVX6C1cQ4kxxQ?=
 =?us-ascii?Q?aRUbrerEeuKXr9lnIGEEHchJn7LCXgtpU5row84Z845JSx5RhHGXKwH3wOPH?=
 =?us-ascii?Q?7G8UCWhoJbeINg+JpuOTNuns2YtnQ8/3gpI1bfmTK2EqJTFt+e9NWiHZOKCJ?=
 =?us-ascii?Q?KQp3AloavS2GEbofFCy/B+IP83xXlpxBVJQHk8QSIZK8uNCb5PS2S4UlkE10?=
 =?us-ascii?Q?Uv6mnhxhkXqGcBbAQQTxfRBK2Acs4LyAKU7dm2n9xzu6VVOWpmpDScfkgDen?=
 =?us-ascii?Q?qoDvMe6pdVtIXgUwmRevJ0euyQK0cF1E3fBhVKDRnflsgYwuE6NTJ3LbyPgr?=
 =?us-ascii?Q?jHovEOHjYDekH7hewIEc/IwgXiuHL5GLrSiQDs8EKCFUV33tAI7UP5yTdyN1?=
 =?us-ascii?Q?R7fqkq0setSZ6OYh10HUzO2C3YaEEItNFNUeQs5KGRlbUhhn+5G0qelp0U72?=
 =?us-ascii?Q?sxfT+nEUrvLQ3dKtASd34Scbr/rT7acavUQ40d1ocxCObc1Q2vPJzk4sZbZg?=
 =?us-ascii?Q?LcUKuhr5iFdlC1r3MGmHf5F1VGE28g7/2N24o51WZLphtgK4WTmyWaeKyqhQ?=
 =?us-ascii?Q?MWz/foRDWYuZTCCHJOxOI7eEj4SUAml2QJZJaXoXq77iPzUZxncydhaFaidv?=
 =?us-ascii?Q?uoqaVsj8hTl0u/rZH2IRXqpNa4/ufDZwwTOOYT1Vjrboiy4Tkw7vTOvGyzJ9?=
 =?us-ascii?Q?DvqfHlu7uKF9kqdT0lt7wzxsXsOiTZoSa6STduaFF3n++5mjf8yeRugeeb6t?=
 =?us-ascii?Q?FsoH1IBzMWPzL1ts7dBpWOKOT84XMtE0HVlDiNBwMMf/yqDqGBUswUSMw0kb?=
 =?us-ascii?Q?dvN7Hw7rAxOW1Og43gktocKQtZzR8tYVgwNeFExPfW/H6AjqXunWFQhxbb1q?=
 =?us-ascii?Q?OXZN3AzyTrSWAYtEC17o4SRwAiVwifJHWV7SFkJJ4j+n5ZDPISr1gzDRnKVg?=
 =?us-ascii?Q?MJ+lUmzIn2FDAWFDAnG05xcFtLNsKwEk/eJzKixNy1G5CMzb1ci3XJjk8lD1?=
 =?us-ascii?Q?7YTlG8oraxij7YD4Gycz4y3QOJjOeM2yVavtDDsynirPjnkXL2tKMG9R/bko?=
 =?us-ascii?Q?2OgUDUIFG7M6QfqycDXEp/wfIgllY/ccu+wsqRsMhC7qq+c96OQmdHiA2XDo?=
 =?us-ascii?Q?/wAzxX07WLiMxGDGTpZmGpPWLqBqfhKMRhiJvZJ5J22qCGyelLRMR1P+tZEb?=
 =?us-ascii?Q?ReHXxprezeeE0IWWKS/er5M=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6344.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?Qr0ACiIfsM8Qul3k4sFx2gDEfImUx/mVn8bbNfkAbafVP1t1KgJ0l7WuZrPM?=
 =?us-ascii?Q?S9JPcGS0m7k0HJZblJgDDbQfqZnS8ePqlLjDRXbwOAxqDBT2PARjqQIZQI4g?=
 =?us-ascii?Q?4KluAYio/U2N4jsZaNlNejAK8kNWc06/p+byThVW6M3z5QNfAvvxDV7q0q83?=
 =?us-ascii?Q?0ylKgr/JvXTelz+yA9g6ZW0QlJRge5ERJ00MLRE4WmgA0fAv4VV4STWt/I8S?=
 =?us-ascii?Q?Lk4dHBoawLzmfLTJVFVwpjuq5QmRUk4a9g5Qx5vYBtak4u5fJcAt0lbl/qoe?=
 =?us-ascii?Q?agDavcShpIAb6+L1imd7mKXYRf1lUHLso+4jCO6KDi7pkdhbuk4I7TFNMh6r?=
 =?us-ascii?Q?NnufzunRcLi5NAwxg8f06jsUIxem2EDRAcNWFSr9T2bN5mQnNBm9Mgv1Vy6I?=
 =?us-ascii?Q?AzLgVAyC/6zn78Z3YfKwYas5yHvqEW8ls+hU0kpe3Kko48UX6Woy5IhMDWK1?=
 =?us-ascii?Q?sY9tFMV+5Z0e3qoEBQVcDkuT7DmIrKd7gHQH8pdMWaPeuwf3IOXHBXVtQPxP?=
 =?us-ascii?Q?O62JC0P3qTeVnraF4XNIBqZzVBssL1ujV/tuemoo+4eqhL6TCD+qabq6kIyb?=
 =?us-ascii?Q?Mu3TMq1mUogP23jAVEmA3vvqLV1fKA3IjS3Gpn7TaRS6hKwzJ/6f1moSuwoU?=
 =?us-ascii?Q?28wSOkpjkGzYOO7u1lEkEDkz4nRikkEmY8sVGIANiU3xBpiyZ90HYhZPGUzY?=
 =?us-ascii?Q?qKXmSzKMVHJsvOpiUqUTvMo3M6l/xrxfwAsDGl1a38Do2UT5CtVFHdaar1YH?=
 =?us-ascii?Q?XBlByn1e5ulxFGWIZYqUKcX63edgegzdIuHzYrRH3DX3M57Oy5Eyah4G0gcf?=
 =?us-ascii?Q?byqqXBtPuggiB3AmAD2DIWo9/hdY2qX1bVsOEAMHmNRqABdL5ahLnX6+emlV?=
 =?us-ascii?Q?fFKpSs76j0u3uJshGdAQX9tu91DIjJfRU+U49BfTYb0HuQc43iBSMqb627Ln?=
 =?us-ascii?Q?OMU0wpEkNVc9iH4gvairZPOjuphfnopN91sk1SNRr1aDa2VubcCY1TfM7BJa?=
 =?us-ascii?Q?JK9pBQXm1JAEnfVShDeEvXH10cPNP7FhECA4JpkYZcwQzCOpMI4SsOYPKkc5?=
 =?us-ascii?Q?KsFKzB+JUnVTjUbKnMEVeAf3aSQz6ch5LuZgZzs94px0LsOayJDg+FwhumS1?=
 =?us-ascii?Q?6inU82MIOzS++MaaJULuTkNqLjs8HxI7isBZilybm4nIYi2gyM11BiUTtZ4p?=
 =?us-ascii?Q?Ate9bQO9Ynu+2hbn9R/Hxj6cUkotoMZf9vrORZSlWgQBKUuZuVqNWwT20jfA?=
 =?us-ascii?Q?cwItnbzfoOxnUM2+i62/fKxYxJhM4Zr4ZrCyujTv6c/fSuneqRoJnC2s1mcI?=
 =?us-ascii?Q?XdQwyEgQXqE0jiDkW+YlqQXJSZizjBUrBWey/QGp9uR+Or8y0zXw+t1q5RSA?=
 =?us-ascii?Q?3vqerT94Vc28hSbv4gx2AEqjPzo2NM+kZQORdcXr+vrcfhkLlbFXTTUdZ1oH?=
 =?us-ascii?Q?fPQyIZFwXGUN3+yVssDUUj1OXLVteJsDMjpk5wJP29z8e40aGbwTJVbqQ2cD?=
 =?us-ascii?Q?ihl12rGhARv8bIs/nhrH3i0HBkz8KDagd1ytN6P1HfSDtjjk9pfilVEvLd8q?=
 =?us-ascii?Q?j0w7OE+xYLB/8bJ1FRchXfbTACK7onrcCjZvLjCPORRZUgPSZxCvCWsXQWuY?=
 =?us-ascii?Q?pL0vAZliePr1ozfG0/ESqjblwAqkCgPvc2O+U3LCIfyzrEeibV+Peqwv9Umb?=
 =?us-ascii?Q?cplCfVZY1LYgfLf6ENpTQr5HTCrCPF8QWSMIkwEs8XYLJ+asVVR8fYTqhYFe?=
 =?us-ascii?Q?rdUe06HLBg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6344.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b5b70374-2fc8-49c7-b3f2-08de5a473bc2
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 06:18:32.4306 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: wYO35oImpY6yr5vJEw6gieaUif2k39WaMpt5STDOlk+m/l4C57hPcCgyZH7HswMvhpiEJU6V4UpDEJ4o0OisxA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6339
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,CY5PR11MB6344.namprd11.prod.outlook.com:mid];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-0.974];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C961B70D03
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 6:08 PM
> To: intel-gfx@lists.freedesktop.org; intel-xe@lists.freedesktop.org
> Cc: Nikula, Jani <jani.nikula@intel.com>; Shankar, Uma
> <uma.shankar@intel.com>
> Subject: [PATCH] drm/i915: move GEN7_ERR_INT snapshot to display irq code
>=20
> The error interrupt register GEN7_ERR_INT is a display irq register. Move=
 its
> GPU error capture to display irq snapshot.

Looks Good to me.
Reviewed-by: Uma Shankar <uma.shankar@intel.com>

> Cc: Uma Shankar <uma.shankar@intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display_irq.c | 5 +++++
>  drivers/gpu/drm/i915/i915_gpu_error.c            | 6 ------
>  drivers/gpu/drm/i915/i915_gpu_error.h            | 1 -
>  3 files changed, 5 insertions(+), 7 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_display_irq.c
> b/drivers/gpu/drm/i915/display/intel_display_irq.c
> index 9adeebb376b1..0a71840041de 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_irq.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_irq.c
> @@ -2472,6 +2472,7 @@ void intel_display_irq_init(struct intel_display *d=
isplay)
>=20
>  struct intel_display_irq_snapshot {
>  	u32 derrmr;
> +	u32 err_int;
>  };
>=20
>  struct intel_display_irq_snapshot *
> @@ -2486,6 +2487,9 @@ intel_display_irq_snapshot_capture(struct intel_dis=
play
> *display)
>  	if (DISPLAY_VER(display) >=3D 6 && DISPLAY_VER(display) < 20 &&
> !HAS_GMCH(display))
>  		snapshot->derrmr =3D intel_de_read(display, DERRMR);
>=20
> +	if (DISPLAY_VER(display) =3D=3D 7)
> +		snapshot->err_int =3D intel_de_read(display, GEN7_ERR_INT);
> +
>  	return snapshot;
>  }
>=20
> @@ -2496,4 +2500,5 @@ void intel_display_irq_snapshot_print(const struct
> intel_display_irq_snapshot *s
>  		return;
>=20
>  	drm_printf(p, "DERRMR: 0x%08x\n", snapshot->derrmr);
> +	drm_printf(p, "ERR_INT: 0x%08x\n", snapshot->err_int);
>  }
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.c
> b/drivers/gpu/drm/i915/i915_gpu_error.c
> index 303d8d9b7775..31c5341fb9cf 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.c
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.c
> @@ -824,9 +824,6 @@ static void err_print_gt_global(struct
> drm_i915_error_state_buf *m,
>  		err_printf(m, "FAULT_TLB_DATA: 0x%08x 0x%08x\n",
>  			   gt->fault_data1, gt->fault_data0);
>=20
> -	if (GRAPHICS_VER(m->i915) =3D=3D 7)
> -		err_printf(m, "ERR_INT: 0x%08x\n", gt->err_int);
> -
>  	if (IS_GRAPHICS_VER(m->i915, 8, 11))
>  		err_printf(m, "GTT_CACHE_EN: 0x%08x\n", gt->gtt_cache);
>=20
> @@ -1929,9 +1926,6 @@ static void gt_record_global_regs(struct
> intel_gt_coredump *gt)
>  	if (IS_VALLEYVIEW(i915))
>  		gt->forcewake =3D intel_uncore_read_fw(uncore,
> FORCEWAKE_VLV);
>=20
> -	if (GRAPHICS_VER(i915) =3D=3D 7)
> -		gt->err_int =3D intel_uncore_read(uncore, GEN7_ERR_INT);
> -
>  	if (GRAPHICS_VER_FULL(i915) >=3D IP_VER(12, 55)) {
>  		gt->fault_data0 =3D intel_gt_mcr_read_any((struct intel_gt *)gt->_gt,
>=20
> 	XEHP_FAULT_TLB_DATA0);
> diff --git a/drivers/gpu/drm/i915/i915_gpu_error.h
> b/drivers/gpu/drm/i915/i915_gpu_error.h
> index 91b3df621a49..26970c5e291e 100644
> --- a/drivers/gpu/drm/i915/i915_gpu_error.h
> +++ b/drivers/gpu/drm/i915/i915_gpu_error.h
> @@ -149,7 +149,6 @@ struct intel_gt_coredump {
>  	u32 gtier[6], ngtier;
>  	u32 forcewake;
>  	u32 error; /* gen6+ */
> -	u32 err_int; /* gen7 */
>  	u32 fault_data0; /* gen8, gen9 */
>  	u32 fault_data1; /* gen8, gen9 */
>  	u32 done_reg;
> --
> 2.47.3

