Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wCN/JN1qFWrxUwcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:41:49 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D011D5D3854
	for <lists+intel-gfx@lfdr.de>; Tue, 26 May 2026 11:41:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D61B110E61B;
	Tue, 26 May 2026 09:41:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cc2ZoFU5";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 74A1710E47F;
 Tue, 26 May 2026 09:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779788504; x=1811324504;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DwYtZFYXuFZMoFDMhmQ9jLt7v1lUXKdRdrvLIkx0PL4=;
 b=Cc2ZoFU50w3NnqLh/NYVXDOkUq71+yeOIVO9GRB4W1tLKZOrotmRU2T/
 Qr4rZynKCq9FBnIgZzWksxlNYH5mjfCqSd3kTCnAaE+JX4UdLLZ1cmoMJ
 ugtdCLEN3DKNQjXcSkCbLiQ5FyY5ZcJ0mVzt7vuv6XE+G+bUJmOkH3IDC
 RbSkyxDIbGdmXKpl9kryR9NAQNYtYUiGSdIN9IWH4cVO030QBUL3vn1EV
 tTlwIrbfyBizUFOaDHhvzZkbPm0kZVdvcGzByo4bwdr3ikjGzW9IrfSRx
 rpqjYqpAmk6vjYNuqyfrL2yBJfaWnKDGJMs3NRbprcVCdZgipPpQ0WsTg Q==;
X-CSE-ConnectionGUID: lVOr/20IT5uJ4t85v2spUA==
X-CSE-MsgGUID: aPo4KII7Sw67skuofmI8QA==
X-IronPort-AV: E=McAfee;i="6800,10657,11797"; a="90897528"
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="90897528"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 02:41:44 -0700
X-CSE-ConnectionGUID: HbnQBCjESOu9YtwnuWAGSA==
X-CSE-MsgGUID: m3GQyOxVTkq5hQN9Erg8rA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,169,1774335600"; d="scan'208";a="239273664"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2026 02:41:43 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 02:41:43 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 26 May 2026 02:41:43 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.44) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 26 May 2026 02:41:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=P2jrKA5Kda4T1LIe+3DmBAVMgpkEzEahFcF6lzmdsAQWmMY8SweuTjNI/T9G/BBe9FMd55gl7zYstOvNbzMY4mpfiXStFR7o9MeToy/lcd2rjcfCY/EHUkNCKzB0vFNYmEEZs/DZ2yKlKHN/jzDEjybiu3wuutuRGq7ChrpjR1B8ggoZx9jdhev12th9Eu0hil9RjGVx6Dp5olGHbnqOFdlPmCIpeiCVOkaL1FARwnr4Mo8mCRmGKGg5mU7hykiS6z/TxoDO7WZ0Yz1Kom/DoWzmfzJS8t6u99qR60THwSPWbKnyyPCSUFph/JW7TjDI9HO60VRo5ayiZbVoVryDYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=DwYtZFYXuFZMoFDMhmQ9jLt7v1lUXKdRdrvLIkx0PL4=;
 b=L9pp8yHVQU/woRtzVKdpziKR0+ltwoiQivPCfWld7NRn6rp2K3FYvWIZ7Qhqa33N91/NM4QA5Tjja0FdHiHucwy40sBtDC8eRvc2IDBWMVxNmkSrUiJFbTRIXsB0oiFo8OrgC0hqWIUoqBdxagX+PbYe1THjCrdazK4YCv+jjwxXyA6+KxVzsdqxQycq4V23d1dzzgDk0DomVb+Jf8y/bbBb9NSk0QGtFs98jawW2BR3EVZ1tPTqqVKJYaU36FdisuNnczKJGmWmA9XQtTaCFc5yYEmLRL7YltPNpRyx9te+1Zqv1NMia6kgvHivfztnJcRBTxmu0MRHajjz9OThMQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by IA4PR11MB9442.namprd11.prod.outlook.com
 (2603:10b6:208:55f::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.19; Tue, 26 May
 2026 09:41:41 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0071.010; Tue, 26 May 2026
 09:41:41 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>, "dri-devel@lists.freedesktop.org"
 <dri-devel@lists.freedesktop.org>
CC: Lyude Paul <lyude@redhat.com>, "Lee, Shawn C" <shawn.c.lee@intel.com>
Subject: RE: [PATCH] drm/dp: Add DSC virtual DPCD quirk for Realtek MST branch
 device
Thread-Topic: [PATCH] drm/dp: Add DSC virtual DPCD quirk for Realtek MST
 branch device
Thread-Index: AQHc7EXgtuvvLgNwcEuzN0L4LG0kRLYgDv1A
Date: Tue, 26 May 2026 09:41:40 +0000
Message-ID: <DS4PPF69154114FB149E173A1C8A47D8982EF0B2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260525125516.2794636-1-imre.deak@intel.com>
In-Reply-To: <20260525125516.2794636-1-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|IA4PR11MB9442:EE_
x-ms-office365-filtering-correlation-id: 216e9eb6-16c2-4ed4-1454-08debb0afd7e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|366016|38070700021|18002099003|22082099003|56012099003|11063799006;
x-microsoft-antispam-message-info: +i/UoqfHt3Uhj6aXlhhdjjDUmynWosawn0TAu9jTlcbxJzLU4EiCNWG9NguUVRpGCff3fm+1WY6CTWt5hm6WPQSiEsFbUP+8feQe3lI25D57ssi9c5um40oXfQw1K93Whb9hmra6IAghQlFLTSvKQnko0ndhIkJkLawtNwSSfzrEwihPZEAPlv9zy/B8cHRDtrV93C5XE9d6W5+tv4Ndm+ZrOMd6PMTymitAyDNjlQPSDKUdxFNTG8ngUgRfiCwwbt7ZPKvLGl07sYJw6p0kNsP5LJGWvw6xRoh4VS/vMoXvGCq4NTB5eLktF9gjpeN34Xu6qBnXnTuBBwUrySXYS7m1QfRQ/BSQAJ1cdosUkkUjGXCsZ/3CeL+Wb4Ja1fIL0WmPBQyqzAdSmC6h+b7cqw0l8mj89G9DCLG7ls6+EKaZfdqFteGLiT+4Yh70Svbp8rrCy56pN1A3bWf+I4hC1v76XbjjfsIqym/J07jwO/GkreLKByxi5wL9HgAGbpr1J/rkICVBMLkPDPMSa7MFi3HdLFXdyaHNcSUOoRysj2kMog/IaGg6axIVRrhZRHvxOM5jt82XhJcnJDFalZOzGtGfT8qBkbvbx685s1VmEvWYzFBUk2BEnBmT3m+Qy2twjUyyoly8ygY0q03JAc3gYSlZjBWid6pPyMOk+e145FbSuNrdpEvEZfJUATayTjrLyWmDT7VlU7Mihr7b0b26sFiIf/TsxAmZOp6YWw3cGImcu5R4d25mMfWPXcrmbvGO
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700021)(18002099003)(22082099003)(56012099003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?M0xXbVpUTW9xREhGeWIwZHJjN1I3SldzL1A0K3FNd250TSsvRE1NOFdIZGp6?=
 =?utf-8?B?eUxadVVUTXFhci92eEk3MUVBSXowVW8xL1pPLzlvdS9YVFIvZCs0ODg5a3dr?=
 =?utf-8?B?Skh6ZEYyQUczd0JRbUw2N1lBTUdVVlZKTnoxai9lOVBYWUdGcVF4Mkh4ckMz?=
 =?utf-8?B?LzUrdUlaOW9OYjlJaE4xTGJPUEs1Vk40bFdRRTcyR3BReU1NUkhJNEcvdXl2?=
 =?utf-8?B?MStkWm9SM0tqVldxMjJQVHc5elBoczFReDNvOGxWNmFXTGNJM1FTSXdDUkd0?=
 =?utf-8?B?TThkdG5keEhPVWJhUVAwZTl0V21OejFLRGIzYjhBbXhsUHFCL0FleFdsc2lN?=
 =?utf-8?B?elZGUjZFZGhVZDlMZU80ZUgyRDdkZ056ZFNpaVFyeW1KSWVkMkdRUDFPcGxn?=
 =?utf-8?B?RTBPRkZ4Rzg0YVJJNUNocEI5c0krMzVSR2QwTVBrV0wyYUNIbXkwdk9RRENG?=
 =?utf-8?B?ZnIvNVp6bnFVZk5qcUNxZ1EyTEdCaUEwUllPVUFtQmtsNlh2dXVnVmtCYll6?=
 =?utf-8?B?VDFOWitHbHhmclBZdk9NMjhiUzZTUzVDWDYvMWFBUndGRXpPdUt3ZE5HUWpD?=
 =?utf-8?B?Njl4NHdCVy92MUJBNnM3alh5TEtiSXRScmlHS2hoQm9qcjY1dkRrMGE2eDYx?=
 =?utf-8?B?eXZ2ZHkvb21VcW8zbkhuMk9xWU9XS2ZyZnlrc3VVOHc3UndLd2tlUUQ4Mmhq?=
 =?utf-8?B?OC8xbHBWUU1nMnlmaG1NNldndzMrZ1hucm1xaW0zcUs1SUsweTVHeU1FVFp1?=
 =?utf-8?B?VmQ2RzgvcWhYZ2xNdVNUa2tzZ0grZy8vQmV1bm9LMlhYZGFaNyttVC9US3Nw?=
 =?utf-8?B?USs0dnVENmNYOXArYXc1dmF4bmdna1dPa3IycmxYZ3VZUUZ5c1Qydm85YUUy?=
 =?utf-8?B?TmFXVXFkUkVPODE1UHRpdUN1UmpwaG8yc1lLcGRZTWRqekFjRWpZanliczZV?=
 =?utf-8?B?aU5ZTnN6VXZWNG1DSnI1Vlp5NG5qNzJ6ZTFKb2JSeTJDOHYrME5aaEY3ckFX?=
 =?utf-8?B?bHYvYUZjblJsSkUrT3dSS2grK3htV3p1NHFDUmlwZUliUkRocWoyRTdPeHRJ?=
 =?utf-8?B?VHNMZmZOalJhSVlFcjdyYm5aYXlvMDBQK2pUWjB4RFhTKzRmRi9uaVIwT3Qy?=
 =?utf-8?B?VGRIM09nN0oxdzNURHNONThNYm96cENGbTdjRHYzenE5Rm5xLzYyRVRSblc0?=
 =?utf-8?B?R2F2KzhvTnY5ZmNpNGJCMCt2V3pZV3hNSzAxS0xUdVpmdVY0TGxSKzA0Nkpj?=
 =?utf-8?B?aDY1ZFlhdStvMUVCUzNPZmF6c1ZXQldYRGtacFJiWUx5cXFjbTVnY1ppUnVE?=
 =?utf-8?B?UHh6eStSRVNPVVZ4TXk1a2FnSUtYY1VWVU11dEt0dWpCQS9ZbmJ3WHl0UDB3?=
 =?utf-8?B?WGR3MkdOYVlxanplZVdYMFRDWWowU043Q0p6cDlpelVhcDhWWUxleVhvZFBJ?=
 =?utf-8?B?aVNpWkpHcjU4RUZtMmNaMGs2MjJqTTJ5QTdDdnJoOElEZzFmK2lNTXhTVHUw?=
 =?utf-8?B?QkozNGlpb25hZ2FtUFFnV3VUS3pCWHkvanlEdzI5TkdkQ1lwU1pRWUZ5YmZp?=
 =?utf-8?B?N2hvbHloQUN1eTRmMXJGT0ptVEVmd3RoaDJtc3JtcThJSExDSDZrdkNkMWtw?=
 =?utf-8?B?NEhLZ0l2NzM1dlIxRGt1VFRPYUJzMTd3MHhnREhwM3FpdSttUGR5R2FXU0ov?=
 =?utf-8?B?V1FkSEF3WWVmb091N01HbjhBcGw2R3R0bzlHeGZvZFJ6SUVqQUdhbHkxUVhK?=
 =?utf-8?B?T0U0Y1R2eU1aRGF6ZFhsTUVxaWdpRHQveTYyNVFwTVNzZzV6T3pnSEh6UnVB?=
 =?utf-8?B?ck1BVVA0dVhJMWdUUzVFMFV4MlovVXUvN1JrbktBNnhQK0U3WkkvVHQxaG9n?=
 =?utf-8?B?b3M1dUFkREc1NnlQaFpUR2JuMEtONEJmbjR3Q1NmcWpBVWdFTDlGN1F6Mm15?=
 =?utf-8?B?c3FsOC9oMGFBZ1JRYkJBZmE4RW1mcnc0TjcyaXhiUm5ZUWhMWmhxYlBtT2FG?=
 =?utf-8?B?d1FIQVQ0QnZlTVFkSGJxNEJrVS9TR2lNdkE0RmR3TXZHSy9OZHRHQnVhU2FI?=
 =?utf-8?B?MEpDdksxUWhKazIxRENGYkJTUWw1NHZNa0ZWT0pnRjVSNE85SjU0UVYyWlFk?=
 =?utf-8?B?U1c5T1U3Q1pWa2h0RkdKK2NDc2tKanZCNnF6cEE5YWFOYURqV0p3Vy8xblBF?=
 =?utf-8?B?UGhzbmhpaFBERnpSdXBtalNtcHdVSnRNa3NzckNGTlNuY2xCaERIN1NwTUlK?=
 =?utf-8?B?WXFJVTdQWmJ2U2RmV3NPcUJoN1FrZnNBOFZ0WmRkNS9wVGpmclVoejRXZVB1?=
 =?utf-8?Q?5m33+AIhsH0ize12OT?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: EqYOg3omD4nwnutInpQkpC6fZDKRUy+cpQwfg+Wl3VrgnKA9kAO/D1N0K47SASqJMvEy3i9JbJtXcDQtksDqC6sgqwkWwUD5F6w+JGD5V2Qh2TAagsQ2gv5X78AEbWpWCl1mPvf/sDtB4GpFjmRWnsKgiOICsZxbu+Fnzf8ctIqezTbFsL4Tl5fi6NU95zQB5GBVACccdziKi4OBgGt9Hwlfgbsf70u3/CJ9RpaHdeqWqiDPfvKUNrlDKCGoxjcCD2k9/3hrYAQ5sZOMR24L6qVwKc2Wb7/MUCDV4Kthkh1Jo4M/Fyl/eMLI2Ijp+/rA20+E9Mms9C8AjTnd2jkH9w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 216e9eb6-16c2-4ed4-1454-08debb0afd7e
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2026 09:41:41.0087 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0GJAH2SCsXoPfHJLSyZP8Om6Q6s4lSd95sLH6VgTdjUctGp+aW6AXMotmlNlvx36lRf+pCpVtJYsGu1OK2lsTg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB9442
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	NEURAL_HAM(-0.00)[-0.924];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D011D5D3854
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBNb25kYXksIDI1IE1heSAyMDI2IDE1LjU1DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMu
ZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGRyaS1kZXZl
bEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEx5dWRlIFBhdWwgPGx5dWRlQHJlZGhhdC5j
b20+OyBMZWUsIFNoYXduIEMgPHNoYXduLmMubGVlQGludGVsLmNvbT4NCj4gU3ViamVjdDogW1BB
VENIXSBkcm0vZHA6IEFkZCBEU0MgdmlydHVhbCBEUENEIHF1aXJrIGZvciBSZWFsdGVrIE1TVCBi
cmFuY2ggZGV2aWNlDQo+IA0KPiBUaGUgQVNVUyBEQzMwMSBVU0ItQyBkb2NrIGNvbnRhaW5pbmcg
YSBSZWFsdGVrIE1TVCBicmFuY2ggZGV2aWNlIHN1cHBvcnRzIHRoZSBEU0MgZGVjb21wcmVzc2lv
biBmdW5jdGlvbmFsaXR5IG9uIGVhY2ggb2YNCj4gdGhlIGRvY2sncyBkb3duc3RyZWFtIGNvbm5l
Y3RvcnMsIGV2ZW4gdGhvdWdoIHRoZXJlIGlzIG5vIGRpc2NvdmVyYWJsZSBwZWVyLXRvLXBlZXIg
dmlydHVhbCBkZXZpY2UgaW4gdGhlIE1TVCB0b3BvbG9neSAod2hpY2gNCj4gdGhlIERQIFN0YW5k
YXJkIHJlcXVpcmVzL3N1Z2dlc3RzIHRvIGNvbnRyb2wgdGhlIERTQyBmdW5jdGlvbmFsaXR5IG9u
IGEgcGVyLURGUCBiYXNpcykuDQo+IEFkZCB0aGUgRFBfRFBDRF9RVUlSS19EU0NfV0lUSE9VVF9W
SVJUVUFMX0RQQ0QgcXVpcmsgZm9yIHRoaXMgYnJhbmNoIGRldmljZSBhcyB3ZWxsIHRvIGVuYWJs
ZSB0aGUgRFNDIGRlY29tcHJlc3Npb24NCj4gZnVuY3Rpb25hbGl0eSBvbiBhbGwgREZQIGNvbm5l
Y3RvcnMgb2YgdGhlIGRvY2ssIHNpbWlsYXJseSB0byBob3cgdGhpcyBpcyBkb25lIGZvciBkb2Nr
J3MgY29udGFpbmluZyBvbGRlciBTeW5hcHRpY3MgYnJhbmNoIGRldmljZXMuDQo+IA0KPiBDYzog
THl1ZGUgUGF1bCA8bHl1ZGVAcmVkaGF0LmNvbT4NCj4gUmVwb3J0ZWQtYW5kLXRlc3RlZC1ieTog
U2hhd24gQyBMZWUgPHNoYXduLmMubGVlQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6IE1pa2Eg
S2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+IA0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUg
RGVhayA8aW1yZS5kZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vZGlz
cGxheS9kcm1fZHBfaGVscGVyLmMgfCAyICsrDQo+ICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRp
b25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2Rw
X2hlbHBlci5jIGIvZHJpdmVycy9ncHUvZHJtL2Rpc3BsYXkvZHJtX2RwX2hlbHBlci5jDQo+IGlu
ZGV4IGE2MDY3NDcxZGQ1NjMuLjljMzFlMTRjYzQxM2IgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMv
Z3B1L2RybS9kaXNwbGF5L2RybV9kcF9oZWxwZXIuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
ZGlzcGxheS9kcm1fZHBfaGVscGVyLmMNCj4gQEAgLTI1NDYsNiArMjU0Niw4IEBAIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgZHBjZF9xdWlyayBkcGNkX3F1aXJrX2xpc3RbXSA9IHsNCj4gIAl7IE9VSSgw
eDAwLCAweDAwLCAweDAwKSwgREVWSUNFX0lEKCdDJywgJ0gnLCAnNycsICc1JywgJzEnLCAnMScp
LCBmYWxzZSwgQklUKERQX0RQQ0RfUVVJUktfTk9fU0lOS19DT1VOVCkgfSwNCj4gIAkvKiBTeW5h
cHRpY3MgRFAxLjQgTVNUIGh1YnMgY2FuIHN1cHBvcnQgRFNDIHdpdGhvdXQgdmlydHVhbCBEUENE
ICovDQo+ICAJeyBPVUkoMHg5MCwgMHhDQywgMHgyNCksIERFVklDRV9JRF9BTlksIHRydWUsIEJJ
VChEUF9EUENEX1FVSVJLX0RTQ19XSVRIT1VUX1ZJUlRVQUxfRFBDRCkgfSwNCj4gKwkvKiBSZWFs
dGVrIERQMS40IE1TVCBodWJzIGNhbiBzdXBwb3J0IERTQyB3aXRob3V0IHZpcnR1YWwgRFBDRCAq
Lw0KPiArCXsgT1VJKDB4MDAsIDB4ZTAsIDB4NGMpLCBERVZJQ0VfSUQoJ0QnLCAncCcsICcxJywg
Jy4nLCAnNCcsIDApLCB0cnVlLA0KPiArQklUKERQX0RQQ0RfUVVJUktfRFNDX1dJVEhPVVRfVklS
VFVBTF9EUENEKSB9LA0KPiAgCS8qIFN5bmFwdGljcyBEUDEuNCBNU1QgaHVicyByZXF1aXJlIERT
QyBmb3Igc29tZSBtb2RlcyBvbiB3aGljaCBpdCBhcHBsaWVzIEhCTEFOSyBleHBhbnNpb24uICov
DQo+ICAJeyBPVUkoMHg5MCwgMHhDQywgMHgyNCksIERFVklDRV9JRF9BTlksIHRydWUsIEJJVChE
UF9EUENEX1FVSVJLX0hCTEFOS19FWFBBTlNJT05fUkVRVUlSRVNfRFNDKSB9LA0KPiAgCS8qIE1l
ZGlhVGVrIHBhbmVscyAoYXQgbGVhc3QgaW4gVTMyMjRLQkEpIHJlcXVpcmUgRFNDIGZvciBtb2Rl
cyB3aXRoIGEgc2hvcnQgSEJMQU5LIG9uIFVIQlIgbGlua3MuICovDQo+IC0tDQo+IDIuNDkuMQ0K
DQo=
