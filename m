Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id B8VcFqfKl2lV8gIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 03:44:55 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A24991644A5
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Feb 2026 03:44:54 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DB09610E6D9;
	Fri, 20 Feb 2026 02:44:52 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BkjW6vok";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD91C10E6D9;
 Fri, 20 Feb 2026 02:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771555492; x=1803091492;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=AkpetHs6o9xIJ/iyCbIdk6kBAv17E5n3pfxDhPpfYvQ=;
 b=BkjW6vokLe1mFtID0ID6up/DVJJAlosKaHkZyUCcakl9Zy5bFP4OGMJK
 yaqPBee6UOA5psFZmfiQbcfyHt+Lb2+Emk4maE24NfPKrLHf7a+ErfIFX
 iFTjdvC0Cyy9Bm2q1TwAodXVUbSeV6QVdzRs8/qlTGueWhFeJ28WMoyRz
 e+oDJgIqkfRQY5//UE5XKUdtNIJL4iASUkhQt7dHzTTDjacZgF6DI11LS
 BHIcJMooHNc3rjx6GLo2cpY5aWrCouOZKHty8cRQnj9Zu7kcfqZUQmko5
 bJFG4No0X40Ekn/4Ni4o7mTG8a73q9VnNXt7hzrsM83c2B2hrf6NmrAWC Q==;
X-CSE-ConnectionGUID: 3cPxYUq4QC6BhGbv988z7Q==
X-CSE-MsgGUID: VoFUuD6cRfez7NBQp/zQ0Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="98116247"
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="98116247"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 18:44:52 -0800
X-CSE-ConnectionGUID: CRwZffVOS3GXc0OSaqn1fA==
X-CSE-MsgGUID: 9347wW7LQ8uqY/5Ohq1e1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,301,1763452800"; d="scan'208";a="218458372"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 18:44:51 -0800
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 18:44:50 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Thu, 19 Feb 2026 18:44:50 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.22) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Thu, 19 Feb 2026 18:44:50 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=yGwnnwwZ4qLcuWjefU8Rtg1MRbyHlOOskYxYN7FJBt9U1H1DsPrOPuXY6znR0TGL3Jc5rGqu9AEa2Rtf38FCI3JcGDlk3w/zNrctf9DIh1knTTeSbQINUquS3ZfNwpgYeBrS+NjlgxrpUls90ThaRNoO3yvO/6TvraaLXQCvE25I2vyIKS0WpDCBaRJ0MSXjUbKWkRSYZ4Tjf0+UajWUnwPB9wZxMCxH3x/U2BDPx/yg6uPjq/CoDW6IE97HyQWrhNBtgRsmDcpyk1G9BxaXcIRNOp3HZ0H/tiEIMphMmATfQ3UFhuY1P0dcfwOqbe54cvy4mhAEY43hwJfqQ3Y2hQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nBZ3BVD7ProhJzda7uhvF3IyZ8pUgSQIV3o8NxOyQdk=;
 b=AUxjXpCHB5Ltrt6lSTnYzgy+18YGhsLixFgmQNmxWj/2F9FdNuQBhwf/NifSVdYu3NyDCFnUNYNELVwe0sVnXdVEd+WpKXmznZoYS67eDoOtYWltSJLPnglh29peRp1kFBVcRUXOY7LEWzaCGNur0AdidU62bbWx7VeGZhdhX8O/fdU5St12T4B397XaAI7AnxuS9whJADJnly88SAqz4ch4vgSbNQRGKC2Iuo/J8DHexz1WtdsOyQab0pSDUaTiXki2jG2w8BIpy0lv1lrdmjqXTjwyp7hpyu+MNsnaQJ4chxEHZxatyBaPreDKc3xmjw/XkHPtzgFbNo/mJueP+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SN7PR11MB7419.namprd11.prod.outlook.com
 (2603:10b6:806:34d::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9632.13; Fri, 20 Feb
 2026 02:44:41 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::a3d9:7cb3:f6e8:1035%5]) with mapi id 15.20.9611.012; Fri, 20 Feb 2026
 02:44:41 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: "Kahola, Mika" <mika.kahola@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH 16/19] drm/i915/lt_phy: Get encoder configuration for
 xe3plpd platform
Thread-Topic: [PATCH 16/19] drm/i915/lt_phy: Get encoder configuration for
 xe3plpd platform
Thread-Index: AQHcnOTX+OVtWBWquEWIEOMy7uzNSbWK6zHA
Date: Fri, 20 Feb 2026 02:44:41 +0000
Message-ID: <DM3PPF208195D8D43363DC29EC03C710245E368A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260213122615.1083654-1-mika.kahola@intel.com>
 <20260213122615.1083654-17-mika.kahola@intel.com>
In-Reply-To: <20260213122615.1083654-17-mika.kahola@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SN7PR11MB7419:EE_
x-ms-office365-filtering-correlation-id: 43b5b689-ae58-4afc-0c66-08de7029ff85
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700021;
x-microsoft-antispam-message-info: =?us-ascii?Q?UNFqGLOviqsAr0/ggEEDFG73P2/RPnsHnfV4zBOQTFjX43MnlxucsTcoq33o?=
 =?us-ascii?Q?nUPLxoh6xd2DdtjEyrK2x3Ee5sqxARzbcwDHVMkFYdtSZnMYdAsUQ5O4rWgL?=
 =?us-ascii?Q?fKnxRJGUp9es6KFXHIWRF/3FlBVSQ3mdJVb7W+YQ8YMgFrVeTTW9Cm070SEA?=
 =?us-ascii?Q?ikA0kQ//dyfx3sChW55VlC4Rizpjihqb3/PBgzICfcAmHYYr9XqA0VT7L5Q3?=
 =?us-ascii?Q?AV/rjtjTBn4/TsTWqbpsK4P1LsOWIdDv/NVFguLHnbH2T1sRirFnkgsxHdlN?=
 =?us-ascii?Q?nOd/HXAUGAp+907CMlglZy5u0q7vWdJTpU/Q60RYscyKlz4aM+QRwvPOTgst?=
 =?us-ascii?Q?Af+u0B2Oibo92OKU2ri74ht+D7ZDVkrDMQ20AS/V5Q69caD5O6EOu49prXZ5?=
 =?us-ascii?Q?SDMBpOc1eDCDI01KtTOrZryNWYxxQAjU99LZ7ZSg6Uc6huqrbRHNqA2HrKQ6?=
 =?us-ascii?Q?hHQzQCYWhiB3gzWStYEQHunGP0lVXhdr8yLu8Rx3ak1CoSRwK7nYec+S2bbN?=
 =?us-ascii?Q?lE4k+EiPLtb1KKKrNjdES7cjQPGrlOez2LqkGtu4+aJgu7nRL1ulZe8Xk6KO?=
 =?us-ascii?Q?l+A1cZRrTWnl7kGjmfn3FFpNIB94Oh55he2UWKV1xP/V6Acgrbrk8GYG1Cim?=
 =?us-ascii?Q?zEsrDy47lhuZxAc04mdYlDeUp//uUckLiv7xg+OXJ62ObtIzpMzNrO48VrVH?=
 =?us-ascii?Q?zhF5Myj/Rvt9f4Nlq3SmeTrR5g6VQe36cqTpd+VTa5xpX8rjEPOUmMS7wMhD?=
 =?us-ascii?Q?j9PG+CvNfY49ZRIZ16oixpzEU12zwSuH8++kay1f8XdVbGJylsYfLlZa9jjl?=
 =?us-ascii?Q?AC92FT9t13iFbRXXr6z7wsAuhMgackBLXKoLnWHU7jr4sOk6G6J711u/aDCl?=
 =?us-ascii?Q?Fc8iJsz2s93y8l3v3H/BUaEjcmyh4Wm06sVfl2MS+uIW/fJvuj79Y0QHbpHk?=
 =?us-ascii?Q?tIontkCHeQPcUiBMg4nvfkT4E+aXkHECvPi2DV2M5yBT7Jwzu5iIta4RZ/3S?=
 =?us-ascii?Q?N9oYllv2DzpiMUJkpCcgvfgoBl7cY6Q1xasd1AUW0y4Hw8x5lBeAlELRvtr+?=
 =?us-ascii?Q?SCERQJacsq0nEvncQVaPZry4/wQcj3XF7D4tWhP2Zt+n0Y9AxmDQpql1uUr8?=
 =?us-ascii?Q?NGmyqkM3EszLPj3DAzfgq8o73CVaFHNEGJF0j8KHZpKHOZVfb1dDvTr+UM/v?=
 =?us-ascii?Q?+YQeJ4C34IB0HoQyF1Z4INM0HcVG8FLM9dar6xJCFSjoJsK/xSN7Ds0OLCTj?=
 =?us-ascii?Q?tL28KsRfzoKq4ZkmtTvCGknj8KNFAx8IBk7a8OMCwpbXrYd5k60G8QfxgqLa?=
 =?us-ascii?Q?sfrJkHhd3/d4N9r4k0RBj+YlJht12370OWQ3Anr8KpuguQ/x/EweFs7bSeZg?=
 =?us-ascii?Q?mbhWZGyOEdLeMbgfnvZILVbTD+/W7JMKbGFFqUBRbEd3laCnXztxGP6t7xEq?=
 =?us-ascii?Q?AfuxMQvHlCf8RacKt5dq2maeslztry7TKgzBQHYS6tcmJRYf1/KVQakR6PEM?=
 =?us-ascii?Q?6JuWrAp+P+igYh3g3oLMLWU2pVGj+KfhZUrK1c35rb4kg27qn/mYXDuJrwy5?=
 =?us-ascii?Q?MRpDVIRdYnhuCS0a83GnoSfTQ6hkyYgrJGHc5yfkRnd4sAap98oVMLc0vgJd?=
 =?us-ascii?Q?HFLaJH9gzY3CsI4Nxvxmgh0=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?AijZ37dapqqqbhdUHki9XpyYMo2+tOcLReURweTn9j78Qp/doFQEpMmMoQ1q?=
 =?us-ascii?Q?UsBUjYRdKnsxOZfbaBeQU02JopFIBBCMiryNKzmmXW6JSf6FqXmG+q41jWc+?=
 =?us-ascii?Q?ImZye8zJKptv85sC+Wl6OwczsAbuxAhzOz0WJdPB7qCNXp6Gs7ndtj0vnXg9?=
 =?us-ascii?Q?Gjys34aTklorSCibIdZiqhSPUkQh4DWNmCW3/jdvnxdN2DT9mNGwQq8NaVnY?=
 =?us-ascii?Q?KeNPaNpYAEyuSgXU3KLAiLfMIC9WWuiEGXVmLF6sLDd5VW/x65XcNoCKwJ/d?=
 =?us-ascii?Q?o61STEYvkI/grmvblNTBzRU+zWiOMAuO2XI+cqXEpWnRRCwReVOk5LhmFG3p?=
 =?us-ascii?Q?8uGbVFoocgQNtRQVHL96FK3hccemJ2Ex423wgA0Wnz3fqn/O+5uGfEJoMwCn?=
 =?us-ascii?Q?sYDswFxSBrl458cgOB/9CDBRzUZ0kc2q2KnQUc/2HxuQNGQfC+ZnULW3DKg/?=
 =?us-ascii?Q?8z1EckADpntR+yvD/CU5WFCNM5wnYDLSXGAOJkJHfeuyy5sIT+4QbbHt36bp?=
 =?us-ascii?Q?73ObOwGEOigao/Ki8aL6n19ylvEAwsverD+i2ACgK5kUL69zaeTSA5HZupp3?=
 =?us-ascii?Q?i7RAoDAvMHk943lrKat9DZODeL8hS/OpJmWO7BnfOI4ncrOLX31FoB1JH4nP?=
 =?us-ascii?Q?AUShbJbBXtD9VwNaOjVu3iJkWLxFcmITcwQxYGi2vSs1i6fq9hF161N6EI6b?=
 =?us-ascii?Q?jmmHeYbDZ62oNsOjpFNzeN5rYPLRX3GFAAoTbLRhPnw2dHrAUjAD++MPPW9N?=
 =?us-ascii?Q?Kk/aCkAVhWTpx4P0hEIG6dmgpjEguH1+t1VzU5UblMHclhfFAbvB3jEkNXIr?=
 =?us-ascii?Q?14J07Owo+U3CA2vei5GZ9D0OIMUiIh/z00DYo9nWma5lQLR/sZeZvaq6WuKA?=
 =?us-ascii?Q?hD4xeFGEOtGkXZSXAMIMWEK7PpGdkI8KbhdAmHM/2nXYmQHjaXr7VIwGP6Hl?=
 =?us-ascii?Q?v3SICW5H5Kmr5m1nLGiUr5rKg6SfgVugX0LgunuCJtA3L7sdhB+Imt6Z+TIg?=
 =?us-ascii?Q?PDTzW3qYC+VntmKq2wV40Gk+B3VeszguwYcS3xsQ5HCWX5RvnUvHTa8VpiCc?=
 =?us-ascii?Q?FweanLkiueUzD+bDGhT2tdLa8LosPuI2Nz3hODAvs+60z1IgL7GwyfZBF+h/?=
 =?us-ascii?Q?PzP9dcjrUwPgNiLksbl0aoD7xk3Ki+L6a+UGQ5c5cEQIc0TzRk1KZx+XRQdi?=
 =?us-ascii?Q?OzEjvzHQ/tljoE33CqIFz20gRoA/Y5tAbJiJwy7+QzXyytIk+j/Har5Swr2L?=
 =?us-ascii?Q?cGvsLRItj8UbgIqEmmhcNabSm/6Yt8+XHU7r7cLoBgzsjfwn6e18gdV+uz7p?=
 =?us-ascii?Q?CqkAQKFH82oA2q+OCofI1udGp33DagK69dj6IctZxkerK6tnTXuhv8SViD45?=
 =?us-ascii?Q?pn3ZMLfaMG3tnzMEiDkI52hs7OPwt4Ad7gxtOW6hktdvNCpjLGlXeR+yPcVq?=
 =?us-ascii?Q?YdiotZXOR9/W2kLGuHWUA/CNi21tMtOxLUXQUgtPLuLYeg3hdBFzAHYcrg/m?=
 =?us-ascii?Q?VFLkkrnh2ABJdBA2akxzVjuKLUMAIBszNxpTKJfCkt9tGXyptffCeTcb7KP0?=
 =?us-ascii?Q?vDj4R4S4yIljzgu48J1sBUrx13l76LKdGjhRXD3Mj8vtE4kPxPQQG99imyDK?=
 =?us-ascii?Q?yXmD0eaN+IhRdxI99DIv3Kkw5NKD7p+c2qHNumYrSOsFBAgi6TxKXQgP4pug?=
 =?us-ascii?Q?uZbGyqmIpIJS/lrgPabAyFu1fRGY69AymqQW4LMihZqEYjHbxB/ON8lvCoiT?=
 =?us-ascii?Q?ySKonc6QGg=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 43b5b689-ae58-4afc-0c66-08de7029ff85
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Feb 2026 02:44:41.5720 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ZG37jBZD8Bi9INOKAaaXAIn8mn6i+zIZc/WUK5qCiamhtLYqDf3xIQzKib24JtvL20SgbOh8iEfZgXUdIl6gKg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7419
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
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
X-Rspamd-Queue-Id: A24991644A5
X-Rspamd-Action: no action

> Subject: [PATCH 16/19] drm/i915/lt_phy: Get encoder configuration for
> xe3plpd platform
>=20
> For DDI initialization get encoder configuration by reusing
> MTL+ configuration.
>=20
> Signed-off-by: Mika Kahola <mika.kahola@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c | 20 ++++----------------
>  1 file changed, 4 insertions(+), 16 deletions(-)
>=20
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c
> b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 532d7d4e3b27..9f3c8cd02a33 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -4244,21 +4244,6 @@ void intel_ddi_get_clock(struct intel_encoder
> *encoder,
>  						     &crtc_state-
> >dpll_hw_state);  }
>=20
> -static void xe3plpd_ddi_get_config(struct intel_encoder *encoder,
> -				   struct intel_crtc_state *crtc_state)
> -{
> -	struct intel_display *display =3D to_intel_display(encoder);
> -
> -	intel_lt_phy_pll_readout_hw_state(encoder, &crtc_state-
> >dpll_hw_state.ltpll);
> -
> -	if (crtc_state->dpll_hw_state.ltpll.tbt_mode)
> -		crtc_state->port_clock =3D
> intel_mtl_tbt_calc_port_clock(encoder);
> -	else
> -		crtc_state->port_clock =3D
> -			intel_lt_phy_calc_port_clock(display, &crtc_state-
> >dpll_hw_state.ltpll);
> -	intel_ddi_get_config(encoder, crtc_state);
> -}
> -
>  static bool icl_ddi_tc_pll_is_tbt(const struct intel_dpll *pll)  {
>  	return pll->info->id =3D=3D DPLL_ID_ICL_TBTPLL; @@ -5302,7 +5287,10
> @@ void intel_ddi_init(struct intel_display *display,
>  		encoder->enable_clock =3D intel_xe3plpd_pll_enable_clock;
>  		encoder->disable_clock =3D intel_xe3plpd_pll_disable_clock;
>  		encoder->port_pll_type =3D intel_mtl_port_pll_type;
> -		encoder->get_config =3D xe3plpd_ddi_get_config;
> +		if (intel_encoder_is_tc(encoder))
> +			encoder->get_config =3D mtl_ddi_tc_phy_get_config;
> +		else
> +			encoder->get_config =3D
> mtl_ddi_non_tc_phy_get_config;

Lets have a patch which basically does all these hookup assignments (enable=
_clock/ disable_clock/pll_enable/pll_disable etc) in one patch let the othe=
r functions define the functions that need to be hooked.
So all these hooks are assigned in one shot and then another removing legac=
y stuff like above in later patch.

Regards,
Suraj Kandpal

>  	} else if (DISPLAY_VER(display) >=3D 14) {
>  		encoder->enable_clock =3D intel_mtl_pll_enable_clock;
>  		encoder->disable_clock =3D intel_mtl_pll_disable_clock;
> --
> 2.43.0

