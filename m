Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AF2A4A2F8C5
	for <lists+intel-gfx@lfdr.de>; Mon, 10 Feb 2025 20:37:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 539BD10E1C9;
	Mon, 10 Feb 2025 19:37:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="gbiLIju9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B931110E3A0
 for <intel-gfx@lists.freedesktop.org>; Mon, 10 Feb 2025 19:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739216259; x=1770752259;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=qoREC0sx2qyRZXrB79k288OQlBqleYPh7SDgm8RjOOg=;
 b=gbiLIju9Jyx2kKGAMp1DIPcBGhgDjWs78w6fSeU3eztScDkK2qAHq2/m
 MYrIdJkSCQ6Sw4jJtxNUUieBYUqf4g5heF/tQIOpAGrFQBhfnENBJ2k2g
 4PZV73eS8tNan/T5H9CM/K09Zs3+jVi1lUqZIAhZ0nFNtrj7VmO9R6p8U
 R1kulckTAxhSwuLVuebK/iA2+W8QPOLnobDse6i9hv86Oqz0gqRBnfQKo
 E7wqPF5yY10e9XDf106CQ52t+wkOa+JWcnWNED7Ux2PNGcbQFkrJnifGN
 4mxIEEJl6OK/8oOzfLOzHR/k+k1iTNvhx+k/QFrsiSU6PqGCrMwfPGcCg g==;
X-CSE-ConnectionGUID: J4V5Ja5LQP212+HF5pr5AQ==
X-CSE-MsgGUID: 8417BvJlTESDe4N8N5idyQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11341"; a="43739981"
X-IronPort-AV: E=Sophos;i="6.13,275,1732608000"; d="scan'208";a="43739981"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Feb 2025 11:37:39 -0800
X-CSE-ConnectionGUID: G3m+AETmShWKTDbc5U1Fbw==
X-CSE-MsgGUID: OOQ5AmgjRpmf5YcKQzUORg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="113162646"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Feb 2025 11:37:40 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Mon, 10 Feb 2025 11:37:38 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Mon, 10 Feb 2025 11:37:38 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Mon, 10 Feb 2025 11:37:38 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F46C0VXbsiSnUTbPEfDrgPTSxDeP6fCEqxW7VmgFHEpTYGvlXG/AM261eELzpwLnpA3K9bxTv1P5JLMnQ32m8AG/rS756ySpUBMaYettto6yBIeeHCVcgQKkr8bzGqUSq2pA0Kr15nWv6zw9THJxYAasADUSLdiyNNwz1wWyQ4BSHihzgln+UnhOAKwST/5zbDWCCyvRVB7A/tpodkayG0l17rb1XOXxMHS/AOq/hb3dI/VUytmXmiuGhjy5No7MeCdZBovFvyafvuYZitLm88Tbvl9oNVZbegQQ1H8XhE/naLcK6Ay2ipo+61Y4uZG6WQsJ1TBNCDgvXO/BJmV9LA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=4AuBzoS7TGGtvKwJXY/l7NJY8HE+0gm7zR3bQn8iSxw=;
 b=q9n5psngPE0wg8sHPRxZMV9QqaKizIB2Fi7uRxrbrVaJpbtbp7+ubqhmZChn1smU+yfICRBbqC/E64JxyT86lLuRcpN2tkTt8G7VXb1V7VxxZgchwcdy+smPfjEc7pu1dXAuf864ZDzTbNO3KHDNeLIXZgMJUdUa7Ej0z1fGDWuk6Y62v2qtQEybsMJELlGRhQOrmptZtxJEPZaM+FX9AjjTy1qOIpGVBPI6+Nyza53X9zDaP6PGJLV6lR/P0WTH46KN1E5m+favmrLZa42iU1Jna454baJzcBoZTPYaA2BrYmMHCbgKXTC6ADCIcPRAdj/fBvgSKsdYuzQ8aJCoUw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5444.namprd11.prod.outlook.com (2603:10b6:610:d3::13)
 by PH7PR11MB6450.namprd11.prod.outlook.com (2603:10b6:510:1f5::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8422.16; Mon, 10 Feb
 2025 19:37:36 +0000
Received: from CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace]) by CH0PR11MB5444.namprd11.prod.outlook.com
 ([fe80::5f89:ba81:ff70:bace%3]) with mapi id 15.20.8422.015; Mon, 10 Feb 2025
 19:37:36 +0000
From: "Cavitt, Jonathan" <jonathan.cavitt@intel.com>
To: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Gupta, saurabhg" <saurabhg.gupta@intel.com>, "Zuo, Alex"
 <alex.zuo@intel.com>, "Vishwanathapura, Niranjana"
 <niranjana.vishwanathapura@intel.com>, "Siddiqui, Ayaz A"
 <ayaz.siddiqui@intel.com>, "Mistat, Tomasz" <tomasz.mistat@intel.com>
Subject: RE: [PATCH] drm/xe: Add per-engine pagefault and reset counts
Thread-Topic: [PATCH] drm/xe: Add per-engine pagefault and reset counts
Thread-Index: AQHbe/L/hiUsDFK/ckm8oaiDqMu4D7NA7mkw
Date: Mon, 10 Feb 2025 19:37:36 +0000
Message-ID: <CH0PR11MB544474FDFE951F58BE4F7DEEE5F22@CH0PR11MB5444.namprd11.prod.outlook.com>
References: <20250210193545.96003-1-jonathan.cavitt@intel.com>
In-Reply-To: <20250210193545.96003-1-jonathan.cavitt@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5444:EE_|PH7PR11MB6450:EE_
x-ms-office365-filtering-correlation-id: 73bd1f08-15b3-4da0-bca7-08dd4a0a5f12
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?us-ascii?Q?VMbGpyepgOazT05PUjwUXAqUEmXu6ooZIdm52aR48fAh0CNEPB9HyFPVS0fo?=
 =?us-ascii?Q?omb529EVHhFyeCziBjFIZPSLn1pQqQs09xN36MeSQJlPdzih+KtyX3YOF5A7?=
 =?us-ascii?Q?a1BkTTA3dxR0LwnkbalfdB1w/GuFYP+Tu8XHdtPV5ZncCaWj71eLzunhcEPf?=
 =?us-ascii?Q?aMZLTfNFW9hgyitcJ2MZ17ecNHINP3goxNukx0WPFS3aVcK88wcmZh6wr+5N?=
 =?us-ascii?Q?RhpnL5xi2s+Zc8gn1KRspGK7CQ0bqXuN0jHAqKUIrWjRjt/AZo82WDTnvh/1?=
 =?us-ascii?Q?MmcGWe6aHBsjHPygUUzeRbi2mg5Iserlxsjd6GlUWEyD9cVTDZ6obbDHjCIv?=
 =?us-ascii?Q?abl4L5URidGdUXbY2Qk1GqKhSqZ+N2Z6eTfADWpBeoxDk2PhsJm7K6l91vdU?=
 =?us-ascii?Q?TAHAtsDWtvLH5hONOJGgfozfxgKt2yXuKbLt+5mxRW791cIz96k3eCKKIKyQ?=
 =?us-ascii?Q?AjJjCd3RQ5I1XANRh5pjdI3NPIhC5KULMXJceAoiTpWP00P9w5PqmpO7S1oc?=
 =?us-ascii?Q?67c+13saZzBVPTWyEju6q30KyaqNfHEQQRoGNBXeT+58imn91+UitXUm4j8z?=
 =?us-ascii?Q?86qfUQ4ZBD8rJACQtQ+6r5pcES7+mX2wh/hShCYbIVnKZqcWFPvXTXzD2SB+?=
 =?us-ascii?Q?NzUBaJskNak820ZfUGecCWCIRlGIhr+KxNrMF5nPgNWbyTRMUAe4EV1cmatr?=
 =?us-ascii?Q?uX6uTZE9tWt0EzFWALgEFE8dCGYwLclm5tKQMWc/J6cOS3Jr0WCY1gVSElOf?=
 =?us-ascii?Q?M6CpYKigEQmq6+qdLCk6cLyTvaCwU1FkbpTdh5X9pvMdH1wZMyHRoI12xMxi?=
 =?us-ascii?Q?aAj63d5CmacFvVXKLCSQDzspUq71pjd7Kg3Q/I1DynqitW1iNIY5MqCwDadc?=
 =?us-ascii?Q?mKaT+c8j67uIfnlT6HP9rVlf6Mq6R0umvsZoq36zzV/vifGLHpCe+O4iO2r/?=
 =?us-ascii?Q?xroLFQTGf8kbhpJGDm96lrDO80vf4xpVuHBr9idNTLzbJsODZT0+rTeq2D8V?=
 =?us-ascii?Q?xBmunDpgaJxYd9fNjHvOGwfiA8HwoiN4rK+IX3jzU0lwHHmSosRWlX/wnHKJ?=
 =?us-ascii?Q?9cxkEBPT7GntrZzrrvlcx9tckyT5ZpPh90dYjlC6zEKj0ZHhpPeV6BY4EXSq?=
 =?us-ascii?Q?vaz5gle3DT52ZzwvQA+zYxHQnOlgDQ4+cY/TkWE03uDBYt+XBHNg9ICCBCmK?=
 =?us-ascii?Q?EOGZUjMWwmjRcYqG7l4U9GwiO4JQzhVuDURxLiisw0Q/2V8mwkcRahMV2UI+?=
 =?us-ascii?Q?RqH3HnIqL0s7JFlDyGdxham+u6j398kIpqD8Ijf6kyqmGt5Hl3OBIRGLux51?=
 =?us-ascii?Q?LlIKkDJ/+txPwqwOUchdIOwSVeX3WzQhCs00c+NRSU4R+uXt4H+OwqjhqOBp?=
 =?us-ascii?Q?wE48H6+zc5q/vhqUU82vn7cGG+xEf5OFzK/i3oumMGm9htzUGrTmAYRckxMu?=
 =?us-ascii?Q?p85rz2pRZ/zvpLq9RuzKtiL+spnR8Zxg?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5444.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?zzkYMnYaQicp8JxX55ocpuSp8zuzBHe0sMTm3E4fHExJfkQKxvc7Q2WPQjvN?=
 =?us-ascii?Q?8oKhbJKRbqMBh3hpnwfyWynVmqifeAeu1OII7Be07riTkaHe/kFFTa0i3FSx?=
 =?us-ascii?Q?wSJi/nDh75k+fvmTtEh7r+DRTf/ODlGvZ6LJWbJqvxs9+WeZ/TnoWL4mRY22?=
 =?us-ascii?Q?nG1inDv7t8+/ni0tvIUoXzjdhBbAVAalD9rB2sQbW9tfSg9PKuE/kPOju43F?=
 =?us-ascii?Q?f9iK6LDr1YlksbX2YNu0pjnttL0+SGSe9LGXlMSc4Ak0K6gV6rVVAOT+9Awe?=
 =?us-ascii?Q?xGrGri+XtRBDUqlD5/Nkw1slyjo3/UcwycET6wkMpENwgBNefiXWk4vX+2af?=
 =?us-ascii?Q?dcUZWonlAG85BHSyBYXLeSKsHUlbH1fHQrLKE8FJxiWZCB0NHa5mfZgsG9+J?=
 =?us-ascii?Q?JK2iKpJZH55p5KCU26h5crrOplHLCDCP5zAv3oX7aGxWFDj9VwNzlPH2IxnS?=
 =?us-ascii?Q?seQ1WNMKc59WQl+kC7G2onsv6+mkP9uzLV+b2I5+DlB0JiJ7QVNh/9T+Li/a?=
 =?us-ascii?Q?kJaYQLmofmoM+C/yZeF6vcYsufXz7ivPW1HMFD9RzervDEq0UKF5E+ioJ4F0?=
 =?us-ascii?Q?qAVYXobmnQcBSBA5oMGKzEF/h4MFY8aZbiCe8qCkg5F4xndvoOHdY2UqkEV7?=
 =?us-ascii?Q?5o29ln2t4P4uqjuGz9a1bnhWk4rVPkoXXi6wXPBund9/aFnoJgAixGsFBGR3?=
 =?us-ascii?Q?/AnFHRRkCQBduLP9Lj3S75ULWARBgOKUadTkz1YEYNY20wn8VTbGKGdUVDta?=
 =?us-ascii?Q?Rqwx5rSi4m79lXzYkB5V3wpfRQE4spwkuY9Fhy4y/OkrIzZwh0yWDomXfd5O?=
 =?us-ascii?Q?FIjsCk+FCYA0h/QoWaywv9ABqLeRdEP9FMNnFhv8j5ooQGFcwB18l7xN3qWY?=
 =?us-ascii?Q?Xal213fOVhCqw78rGRhD8bG5O6AUe2mALSg/UCa1UV43In89EYBD0IZ6ixJ0?=
 =?us-ascii?Q?hFQ4KMSkZe/K5217pmcS+IiPnv5mLiezswK79ONoqY0wv0oIdIMdMBECizsz?=
 =?us-ascii?Q?ArevyUiLteEh4NS8rm5ECXIwGz3IYYW0H0YBMkygctu4VFdKIRqhXdx9eV8z?=
 =?us-ascii?Q?EbR0dZGSR+Lc3PElh9uARjL8IQYzID4kRApGWzrz9aPY1VZ/3x3tnHf0B+rG?=
 =?us-ascii?Q?wLLLs+7MOHy4BcqOdmmvsa/4zTIUzu9c3Fp1LYwhULMsqHm5NJndWMHKZ+Y9?=
 =?us-ascii?Q?VWBMhtUvoLkZvVoY6pG6mLfhRpuTAWxS2uboLfR1692mIvdtUX2DLzNCUDx8?=
 =?us-ascii?Q?3iQTYiDoSBVlR5/GnbxoRlcd8MUUgx5RMIcVyNPlJvo+oZTKfvEitEiUXjNo?=
 =?us-ascii?Q?VDn402HogiMEDL/4pMaVkQio5SHSZf3ggNvzM8OsWnv/l7reyS40xTN9ZwKU?=
 =?us-ascii?Q?gCawrvK2Q11xsdaueQcelSpeFYkiCpB3YnxKARphQd4QZPvxdSrZY2t/B9T8?=
 =?us-ascii?Q?yPzI32mvWvOHVQ5U4X3/+Fz52nb9qMB/rk6SIk1FlGfEneQHmjS9XMWHuqLB?=
 =?us-ascii?Q?IwyIPvfbK7MmgyzPpJQ7Q1Cf3DQjL28bUGWaFQ1a8X6YqyuxufMtcYHONY6d?=
 =?us-ascii?Q?JoasDLnCcg7rPTvdyvG+QWlW25FwxZhvmyvkvUtR?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5444.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 73bd1f08-15b3-4da0-bca7-08dd4a0a5f12
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Feb 2025 19:37:36.1539 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: H6XTIFh2T/ghVhCkmVZpRjGvOiACZUafNcqJzFuGjlnEeCzDanNVz/WgiwLzbcrWEtN9zER9rLvHkz4C7EPpWo5tIOEf9zu/v6rYc3olLFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6450
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

Wrong mailing list.  Sorry.  Please ignore this email.
-Jonathan Cavitt

-----Original Message-----
From: Cavitt, Jonathan <jonathan.cavitt@intel.com>=20
Sent: Monday, February 10, 2025 11:36 AM
To: intel-gfx@lists.freedesktop.org
Cc: Gupta, saurabhg <saurabhg.gupta@intel.com>; Zuo, Alex <alex.zuo@intel.c=
om>; Cavitt, Jonathan <jonathan.cavitt@intel.com>; Vishwanathapura, Niranja=
na <niranjana.vishwanathapura@intel.com>; Siddiqui, Ayaz A <ayaz.siddiqui@i=
ntel.com>; Mistat, Tomasz <tomasz.mistat@intel.com>
Subject: [PATCH] drm/xe: Add per-engine pagefault and reset counts
>=20
> Add counters to all engines that count the number of pagefaults and
> engine resets that have been triggered on them.  Report these values
> during an engine reset.
>=20
> Signed-off-by: Jonathan Cavitt <jonathan.cavitt@intel.com>
> CC: Tomasz Mistat <tomasz.mistat@intel.com>
> CC: Ayaz A Siddiqui <ayaz.siddiqui@intel.com>
> CC: Niranjana Vishwanathapura <niranjana.vishwanathapura@intel.com>
> ---
>  drivers/gpu/drm/xe/xe_gt_pagefault.c    | 6 ++++++
>  drivers/gpu/drm/xe/xe_guc_submit.c      | 9 +++++++--
>  drivers/gpu/drm/xe/xe_hw_engine.c       | 3 +++
>  drivers/gpu/drm/xe/xe_hw_engine_types.h | 4 ++++
>  4 files changed, 20 insertions(+), 2 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/xe/xe_gt_pagefault.c b/drivers/gpu/drm/xe/xe=
_gt_pagefault.c
> index 46701ca11ce0..04e973b20019 100644
> --- a/drivers/gpu/drm/xe/xe_gt_pagefault.c
> +++ b/drivers/gpu/drm/xe/xe_gt_pagefault.c
> @@ -130,6 +130,7 @@ static int handle_vma_pagefault(struct xe_gt *gt, str=
uct pagefault *pf,
>  {
>  	struct xe_vm *vm =3D xe_vma_vm(vma);
>  	struct xe_tile *tile =3D gt_to_tile(gt);
> +	struct xe_hw_engine *hwe =3D NULL;
>  	struct drm_exec exec;
>  	struct dma_fence *fence;
>  	ktime_t end =3D 0;
> @@ -140,6 +141,11 @@ static int handle_vma_pagefault(struct xe_gt *gt, st=
ruct pagefault *pf,
>  	xe_gt_stats_incr(gt, XE_GT_STATS_ID_VMA_PAGEFAULT_BYTES, xe_vma_size(vm=
a));
> =20
>  	trace_xe_vma_pagefault(vma);
> +
> +	hwe =3D xe_gt_hw_engine(gt, pf->engine_class, pf->engine_instance, fals=
e);
> +	if (hwe)
> +		atomic_inc(&hwe->pagefault_count);
> +
>  	atomic =3D access_is_atomic(pf->access_type);
> =20
>  	/* Check if VMA is valid */
> diff --git a/drivers/gpu/drm/xe/xe_guc_submit.c b/drivers/gpu/drm/xe/xe_g=
uc_submit.c
> index 913c74d6e2ae..6f5d74340319 100644
> --- a/drivers/gpu/drm/xe/xe_guc_submit.c
> +++ b/drivers/gpu/drm/xe/xe_guc_submit.c
> @@ -1972,6 +1972,7 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc *=
guc, u32 *msg, u32 len)
>  {
>  	struct xe_gt *gt =3D guc_to_gt(guc);
>  	struct xe_exec_queue *q;
> +	struct xe_hw_engine *hwe;
>  	u32 guc_id;
> =20
>  	if (unlikely(len < 1))
> @@ -1983,8 +1984,12 @@ int xe_guc_exec_queue_reset_handler(struct xe_guc =
*guc, u32 *msg, u32 len)
>  	if (unlikely(!q))
>  		return -EPROTO;
> =20
> -	xe_gt_info(gt, "Engine reset: engine_class=3D%s, logical_mask: 0x%x, gu=
c_id=3D%d",
> -		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id);
> +	hwe =3D q->hwe;
> +	atomic_inc(&hwe->reset_count);
> +
> +	xe_gt_info(gt, "Engine reset: engine_class=3D%s, logical_mask: 0x%x, gu=
c_id=3D%d, pagefault_count=3D%u, reset_count=3D%u",
> +		   xe_hw_engine_class_to_str(q->class), q->logical_mask, guc_id,
> +		   atomic_read(&hwe->pagefault_count), atomic_read(&hwe->reset_count))=
;
> =20
>  	trace_xe_exec_queue_reset(q);
> =20
> diff --git a/drivers/gpu/drm/xe/xe_hw_engine.c b/drivers/gpu/drm/xe/xe_hw=
_engine.c
> index fc447751fe78..0be6c38fe2a4 100644
> --- a/drivers/gpu/drm/xe/xe_hw_engine.c
> +++ b/drivers/gpu/drm/xe/xe_hw_engine.c
> @@ -516,6 +516,9 @@ static void hw_engine_init_early(struct xe_gt *gt, st=
ruct xe_hw_engine *hwe,
>  	hwe->fence_irq =3D &gt->fence_irq[info->class];
>  	hwe->engine_id =3D id;
> =20
> +	atomic_set(&hwe->pagefault_count, 0);
> +	atomic_set(&hwe->reset_count, 0);
> +
>  	hwe->eclass =3D &gt->eclass[hwe->class];
>  	if (!hwe->eclass->sched_props.job_timeout_ms) {
>  		hwe->eclass->sched_props.job_timeout_ms =3D 5 * 1000;
> diff --git a/drivers/gpu/drm/xe/xe_hw_engine_types.h b/drivers/gpu/drm/xe=
/xe_hw_engine_types.h
> index e4191a7a2c31..635dc3da6523 100644
> --- a/drivers/gpu/drm/xe/xe_hw_engine_types.h
> +++ b/drivers/gpu/drm/xe/xe_hw_engine_types.h
> @@ -150,6 +150,10 @@ struct xe_hw_engine {
>  	struct xe_oa_unit *oa_unit;
>  	/** @hw_engine_group: the group of hw engines this one belongs to */
>  	struct xe_hw_engine_group *hw_engine_group;
> +	/** @pagefault_count: number of pagefaults associated with this engine =
*/
> +	atomic_t pagefault_count;
> +	/** @reset_count: number of engine resets associated with this engine *=
/
> +	atomic_t reset_count;
>  };
> =20
>  enum xe_hw_engine_snapshot_source_id {
> --=20
> 2.43.0
>=20
>=20
