Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UOp5CndSc2kDuwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:50:31 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 90DC774954
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 11:50:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2446210EABA;
	Fri, 23 Jan 2026 10:50:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aSpaYzW4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2489210EAB4;
 Fri, 23 Jan 2026 10:50:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769165428; x=1800701428;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=CT6/YwJe7hEJCe7nlGdNR7g+A9sL+fXUEGym67Xczz8=;
 b=aSpaYzW45tWeL7gBFGLCLh+7QoQitUmh3Imu/v2sFP9n6KDUFwJlnezh
 Obs/SfUiNZhakK64jy+yGEaJKA86YutZnOPdo8pEV/hzs9bxXc8t17gvx
 Cu0i5JKggCN22u7jRlw2VRMu6Wz8JN6gNZp1ufd3sNdqrSYHAXdhFa4df
 615QXwKKCcpaGlth6FToqNqmfl3GmI9ukRvOLhiFEXJPLx8X3mWsiHFd0
 xXaHbAgAAq6oCwbqqQh+2AWkJ8WPPUbWoMFyQ1lI3yvOJ7bAQ27msvaN6
 VLa7et0gGVZIeXDHCYsUGwIHQ6eL87JfNDg8LDzVRWoAGOz+O9vLiccbb Q==;
X-CSE-ConnectionGUID: UG3E/JjUQU+CO40Q6+Jykw==
X-CSE-MsgGUID: th3sEyMNSkWpszqzj9ZKXQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11679"; a="81860981"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="81860981"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:50:28 -0800
X-CSE-ConnectionGUID: 8wuhMX8JQtK5HdyQ3AT+xg==
X-CSE-MsgGUID: HNthCNbzThaehR3rfzUxfw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="207340909"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa010.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 02:50:27 -0800
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:50:26 -0800
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 02:50:26 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.35) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 02:50:26 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wIQZBv+o6TpRttZ3kJBPCr2DR4vZsCpTU7wV3YGLfJMMA30CHU2PL0vLvKRyYXfvaGSTkC9ZYMeFANFePHhAAHPCGpSLHbgSns2ieo0LjXOSdD/AAdVa7dDmULox2890oMzY92fWWp002Pyxsl1ajZfpfKMJE/wLl6/wXyR852n9RHX+J1x0VO1ACMX3OnGliM7h30BeRr3ZQbEqi5SQ74Mvi57frCXQ4ySvNzzN8Dlek50AXERXzbG3t1N4fhmlUHlCq7iLyUl3oLuTDCSKxYdl7OboPaITCaoGyWFsA7LawvYSLpSxQHhe2EU5YUfQAykGFIYgnUi7c0Ercm2Ybw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=V9gJQoBLTGGC4WuVA59f2/NivjNjt/H4jqhQBd1Q94c=;
 b=P3Dl/V19bKTe3gz9dUJlrxTerFgq75EXCxQRnIGprtvIZp1erzGdTdMTX8J/4CTnBPdaEWXL0+ids8jqN03THFBOksP/tQbt7w6yGBT9Es0eP/mRB3bltgFC7pl2jgz9F5/nVAPPmWI1IXA94T/ZTIl3MVRRDoShq+TMmZJ/xA5AGY5EFtfhwTLmZuBoKemWItbO20x4ucIaIomUTzEzQKXnT6kXmu9jzRyQ0laKX/v1f9MBqZsUkG9zwb/GkuDH8n4Z7g+L6RcnTQY5fEGvMIEwZkULawIsDPkxE+7amOL8PgJ96T2jJus6hWQ1f8Nlic+zt85U+9i1LfJ1VOlvTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6360.namprd11.prod.outlook.com (2603:10b6:8:bd::12) by
 DS7PR11MB6014.namprd11.prod.outlook.com (2603:10b6:8:73::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.9542.10; Fri, 23 Jan 2026 10:50:19 +0000
Received: from DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6]) by DM4PR11MB6360.namprd11.prod.outlook.com
 ([fe80::8648:3a6b:af5c:b6e6%3]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 10:50:19 +0000
From: "Shankar, Uma" <uma.shankar@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: RE: [v2 17/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_display_power_well.c
Thread-Topic: [v2 17/19] drm/{i915, xe}: Remove i915_reg.h from
 intel_display_power_well.c
Thread-Index: AQHciyr0thNrua6BX0u8aeqRkpUNerVeHHGAgAF5RbA=
Date: Fri, 23 Jan 2026 10:50:19 +0000
Message-ID: <DM4PR11MB636070780056AC5A9D131A86F494A@DM4PR11MB6360.namprd11.prod.outlook.com>
References: <20260121232414.707192-1-uma.shankar@intel.com>
 <20260121232414.707192-18-uma.shankar@intel.com>
 <59509430119357e7c4e591bda331fd77aafd2054@intel.com>
In-Reply-To: <59509430119357e7c4e591bda331fd77aafd2054@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6360:EE_|DS7PR11MB6014:EE_
x-ms-office365-filtering-correlation-id: 3a20587f-6322-49f6-a38b-08de5a6d3340
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|7053199007|38070700021; 
x-microsoft-antispam-message-info: =?us-ascii?Q?cTbd3VY4VktYq8XFiK607a+2G9i9BjfsV0A8l0Dmyglx8t51GHvgZD50fP27?=
 =?us-ascii?Q?D5MIHvYU9di3ifrEN5suqN9lUupTBW4CtqidC80RHccNLXlj+NKnMKe5myPA?=
 =?us-ascii?Q?rus1oI5ArDEZDSeccM+23+lomsLE+7VcE5o6wuFeUdozXssZ2+t/tXr0tnLX?=
 =?us-ascii?Q?te5Xb2WAD3/AmurajzQG+/i7lWO/fEvdSbE0E63QV/yFAGiw3VAenGNoIcK4?=
 =?us-ascii?Q?iMUVtFiimSrxMW2thSgl1QtA5jdPmgr4yHQ1ILJHhAX8oPZo8oz+wIl3XKO8?=
 =?us-ascii?Q?iLaKmXThMdhFKRz3OuP9adMjrualQhOSD+pzrwYV8hEsQ9S+hstr3qWIfk6J?=
 =?us-ascii?Q?x7/WVvZN4Yy4DQlaBb9Pv8X3UoUme10SwDldLncGUkdR0MUKNP+hc3b716V1?=
 =?us-ascii?Q?A5qjdmmiv4UMgcWzu0nh0vYa6KBd7/LGTU133gCfy/X8jiv3c2w4KwVOLPrG?=
 =?us-ascii?Q?KFU/kB2N1JRrpg0il3yXoXFAiTuAhv5VJV4lM9NfNNrlN+EgcJxwHwApI50B?=
 =?us-ascii?Q?Y9kLe7/SgEY6fZDroVJCQm58dlbTEVMMoXPdvOK6c3yW4CDB318e1J2Vfn6m?=
 =?us-ascii?Q?l9CSWqYgIIozTc5ixxuhjIBmFaVuVlUGdrbwXidtssQr9lVx+USKWHNPIHBn?=
 =?us-ascii?Q?8qii3dPYJIxA4OGNtwsW2u2nLcw5GsiPiWmvhHiHmQVgLdS1w/sOKwqzyP2w?=
 =?us-ascii?Q?DldC5g/nyCP3g/pF21V4Xb3jMSBF6BX9zHGayqewMkfjrNeea+4/2fkZrt1B?=
 =?us-ascii?Q?3Sbacy3z+R+ucIA0pfwPinr+FXlreifkm/kIiKMT+K8VgQztGLmt3HSR4mB5?=
 =?us-ascii?Q?1YIpYXmA5xiaWeAdIK0G12y1TJFsi1LEbZban+fO+0SKCbC2dix8Ikm4HyxS?=
 =?us-ascii?Q?gTu+rQWeM4cdjSuzBd/lrHOdUrajDXJBux2ChbpMS+hvYuH1iYYitxtaCwYD?=
 =?us-ascii?Q?tgnn+uFbjOT7fUaV3t32T24GHFBOxGnEa02n0uEswF6zNz8pN5ecb7xOBFhM?=
 =?us-ascii?Q?UVmByBF/tECdLUuJ60E9TkZpV/G+fmQygzHuKA0bFVICXAGjKThjaiAJEbeF?=
 =?us-ascii?Q?gbgH4Lv3tGpkGEyy83VeF4EuftSP5HUzHlgIRAo5VaKw4mrYjlvcdF4Jd/wt?=
 =?us-ascii?Q?tver302LTC6GYn8DV9x9del0tO0/XKa6qw2vPH3fC/TvBwuItYECFrZ9aeKq?=
 =?us-ascii?Q?fC0k6WMLQuXban6/dD3JJP64zGCdmyjV93FzHe7Qr2qD8cyncnONbrbnNRjn?=
 =?us-ascii?Q?dzvT1q5cPVwVwQHQJ1uFkfx1CXHDFYAMOx8hOmeUctUcpzIaa9oV9IAU6Erf?=
 =?us-ascii?Q?CgBx/YbHm1LTQxE8mGa+ZIv4vFcUpvltmDk7aj3T2H7+OZMGOmeExJoGJdA6?=
 =?us-ascii?Q?bugYnw1QYZ+WDN+16EP8ZUi0QT0CIv4kEXFfre9cOP+ZKuxBjVEsl0lbSqBv?=
 =?us-ascii?Q?X1mYcHu4ehHFi2RuQY/+gS5T7lrDCXPUziEB0YvShbeJXZHHmU7prR/l2U07?=
 =?us-ascii?Q?MTvP8duYtMM1CWN2Y1VQEXyrgG2ZQcfCmm/MJjnp2oVXqOPJ78a4/myGh5KQ?=
 =?us-ascii?Q?bl0hPxFOrW7Fki5qRE2PZUKO0nFf6Y0w4HjxGEPK2dXpULJ8ownIIQuwRWf1?=
 =?us-ascii?Q?glT6JbEudnNJDVhA85x7N7A=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6360.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(7053199007)(38070700021); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?us-ascii?Q?JfLC+ARD295WS9voEamD+OJOBilkJkgsq2W4Z8btk6+BL8A9yudr5Ddj90vU?=
 =?us-ascii?Q?3SCvK2StmO17zkyeNrzAO7JcEbmTXxNcZ/MEJfMyKx/QY7+A5zrzJ1RlEtLm?=
 =?us-ascii?Q?2KzQ6tf4nIjaTC0LtrYU+oVp6kQKIjqg6ZvclTlQYQQKoOe3UQTqJOWpkIic?=
 =?us-ascii?Q?l8TgcWEC/YHKaiglsEGZTqPTpLuBpb9qAlcYj6wQ+HQfIm92Pw1RjMOGqmyy?=
 =?us-ascii?Q?DNwcdktS7J764anhoSYzJFt7pj3cxJ67cTj4ZP27fipQUK9lYrEvjv4hIINn?=
 =?us-ascii?Q?hRuCa7mXHMm3rd9Z4Zh54Yus7zMHgNNbtdrmyvFDgIRc7za7MmhMve9FKG3p?=
 =?us-ascii?Q?w3uk7xY32KvRo6OxzfMvydKYVOqxNHT2JKZsI4JMpAl+seaL/SYObAXalDmE?=
 =?us-ascii?Q?NBSdISLOm+4xHaQeVISGybQedvy4IKXvY0rlmgA77E/IodtXpsd0QUKPLxDN?=
 =?us-ascii?Q?Sh/t9U6mJ6IvbMxRX00n1Z13fy5cpYVUpgkh4T8K7R62gTKNgl9DeWTG8xDY?=
 =?us-ascii?Q?7gxncCJXv3O9HGrJoNWU06ILXIf81QLsmA18ZnSWFWWF9wUofgYQjOZUNNen?=
 =?us-ascii?Q?9lUALVv+VYMi2u8qRANHUUKUTqqb9cvWR3CxBbo8ojNEWQ6vGQrklM/luydf?=
 =?us-ascii?Q?Eh/emUtUk7i8eYTB8bGDfYlPlFusUtL4LDBE8oUVYCFXEpofUK/gmyByyVOB?=
 =?us-ascii?Q?QstW7UysQ89gsjh5y0c3t/B9rl3zOf1YUnrWlGzQK3Q8R47v9SsMGkUBIaHI?=
 =?us-ascii?Q?UZ+OYOayD2yzTwgbW3IuZuODinvqD1mlb1FP05hf+dAnAgxxaieWptIfY4X2?=
 =?us-ascii?Q?LK3j3iu7398XtG+G7HpTPSCbCRvEM0bqItYveOotG9rez9agCdhVP4/S6j8h?=
 =?us-ascii?Q?78hp3GasYUxegvEqUdfMnxcvA+O99sVid6itCab/yLsrs65ERJStZ9895AkA?=
 =?us-ascii?Q?GqgROw4gXHjUMN1/ZokJN9kzjUozxrrYNh7ViMV/CuXpc+6iAZQsGLyZ8g20?=
 =?us-ascii?Q?iUMaejSBdrrYYoPsNyCDFmNmxWpFdf5JNgLLs9EZOKeu5maRfoXCbzsjizjP?=
 =?us-ascii?Q?RyZGUvrBYjj0T4pEDuwHRKjH1rs/V936635c+q3dQnio+T9tNZoqrNNXFNcq?=
 =?us-ascii?Q?wXVcUYq53fDzdoy7sBTxxeSL6++93cI16wPCU0LnWudKCKRjibNFfBVRgKxk?=
 =?us-ascii?Q?9XDURdkjov5RH0KpOqWV6nXt+SCrWW2rv+rZ76S2HZIrKsHdfjr/yCI8Ga9m?=
 =?us-ascii?Q?uTrIsXSwb0l3aByL+tr9Tgy9mW0NYaYVtapeMWPASwbH0n8BHZTk05lvnADv?=
 =?us-ascii?Q?CHpBymh6MYW+OE8SovEJWqoexoZ9+HcY24tDylUqHAAMUBkCZUj6JI9HGOj4?=
 =?us-ascii?Q?LyegMRQ1XuUgZNmoWXGAl3hzd7glBr4Q7K4uOmWd5JFro7f4kX6rnk3KBk2L?=
 =?us-ascii?Q?Yu14lBz/CdxNROEIbAfQtIoTClkqKNFaulJ8a0vsWVxm4JXGCMAmG25OJ+t5?=
 =?us-ascii?Q?F6QsZqB5GSYfaposlYjffQ8vxJ9xbJBcMDsmle5BDJNgooZVkaXE/trpUhV9?=
 =?us-ascii?Q?Wubzr13nnAErkSzRyVGTPALOYBCIfJa7X14oAz+5spTF5AQxOrEReY4MTNkQ?=
 =?us-ascii?Q?AEGRAAXdbMUGCcJ6/QQb9yQJcWalXER0MXZiDFQPXbQm8EZs92jirqAD/GNf?=
 =?us-ascii?Q?N0cfDPq79DvnTaQ1RQNBKgoi19hawp/f9RJXOsRuKPWcoLbdYn7g+pkgET5a?=
 =?us-ascii?Q?YSiPIbiuXQ=3D=3D?=
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6360.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 3a20587f-6322-49f6-a38b-08de5a6d3340
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Jan 2026 10:50:19.0834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: hMr2LbwtYRev1IqwktprjsJN7U19vvE1zBt2qpbqOEBT+nXzJFP/sXrzUjetXJENsXWUpUojTWt6eUbRrjaMtw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB6014
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[DM4PR11MB6360.namprd11.prod.outlook.com:mid,lists.freedesktop.org:email,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[uma.shankar@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	NEURAL_HAM(-0.00)[-0.984];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 90DC774954
X-Rspamd-Action: no action



> -----Original Message-----
> From: Nikula, Jani <jani.nikula@intel.com>
> Sent: Thursday, January 22, 2026 5:50 PM
> To: Shankar, Uma <uma.shankar@intel.com>; intel-gfx@lists.freedesktop.org=
;
> intel-xe@lists.freedesktop.org
> Cc: ville.syrjala@linux.intel.com; Shankar, Uma <uma.shankar@intel.com>
> Subject: Re: [v2 17/19] drm/{i915, xe}: Remove i915_reg.h from
> intel_display_power_well.c
>=20
> On Thu, 22 Jan 2026, Uma Shankar <uma.shankar@intel.com> wrote:
> > Make intel_display_power_well.c free from including i915_reg.h.
> >
> > Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display_power_well.c | 2 +-
> >  drivers/gpu/drm/i915/display/intel_display_regs.h       | 2 ++
> >  drivers/gpu/drm/i915/i915_reg.h                         | 3 ---
> >  3 files changed, 3 insertions(+), 4 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > index db185a859133..8a1f1c61c6da 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display_power_well.c
> > @@ -6,8 +6,8 @@
> >  #include <linux/iopoll.h>
> >
> >  #include <drm/drm_print.h>
> > +#include <drm/intel/intel_gmd_common_regs.h>
>=20
> Again, I dislike the catch-all header, because I have no idea why this is=
 included.
> More granular is better.

Noted.

Regards,
Uma Shankar

> BR,
> Jani.
>=20
> >
> > -#include "i915_reg.h"
> >  #include "intel_backlight_regs.h"
> >  #include "intel_combo_phy.h"
> >  #include "intel_combo_phy_regs.h"
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > index fb21b1cf6124..1def3dccdf61 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_regs.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_regs.h
> > @@ -319,6 +319,8 @@
> >  #define  FW_CSPWRDWNEN		(1 << 15)
> >
> >  #define MI_ARB_VLV		_MMIO(VLV_DISPLAY_BASE + 0x6504)
> > +/* Disable display A/B trickle feed */
> > +#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
> >
> >  #define CZCLK_CDCLK_FREQ_RATIO	_MMIO(VLV_DISPLAY_BASE +
> 0x6508)
> >  #define   CDCLK_FREQ_SHIFT	4
> > diff --git a/drivers/gpu/drm/i915/i915_reg.h
> > b/drivers/gpu/drm/i915/i915_reg.h index a85e2d9ab561..c68a64bc7646
> > 100644
> > --- a/drivers/gpu/drm/i915/i915_reg.h
> > +++ b/drivers/gpu/drm/i915/i915_reg.h
> > @@ -428,9 +428,6 @@
> >  #define   MI_ARB_LOW_PRIORITY_GRACE_4KB		(0 << 4)	/*
> default */
> >  #define   MI_ARB_LOW_PRIORITY_GRACE_8KB		(1 << 4)
> >
> > -/* Disable display A/B trickle feed */
> > -#define   MI_ARB_DISPLAY_TRICKLE_FEED_DISABLE	(1 << 2)
> > -
> >  /* Set display plane priority */
> >  #define   MI_ARB_DISPLAY_PRIORITY_A_B		(0 << 0)	/* display
> A > display B */
> >  #define   MI_ARB_DISPLAY_PRIORITY_B_A		(1 << 0)	/* display
> B > display A */
>=20
> --
> Jani Nikula, Intel
