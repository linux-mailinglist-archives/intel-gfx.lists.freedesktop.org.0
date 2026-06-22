Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vWZjK9k2OWqyogcAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:21:29 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B0B86AFC85
	for <lists+intel-gfx@lfdr.de>; Mon, 22 Jun 2026 15:21:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=bldbUjg5;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DA3C510E20B;
	Mon, 22 Jun 2026 13:21:26 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 742BD10E20B;
 Mon, 22 Jun 2026 13:21:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782134486; x=1813670486;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=aRisYWPDeYdz91BgU6f5JM61RkNIXh6NcCCcuiuGzU0=;
 b=bldbUjg5kHyJjZ6yMy3o6jSiUL35x9gXdxr5A8VmQEaMPVAIafKT5Zt+
 iWqlC9lcm83L1cmbPN+RZ0D50mUR/H1BAvXHyGtVI1EdQ9inOFyxSuofn
 91FSbEWdmgkD6TDnZWXmiV9PkGmlbZzJDAKHf3jmpPg1QS1GD9args4pk
 TurKLsVeAE2xrddPvcr+w2QUgdhgTmdTfNRzbRqDz5R2TYDoIJO/j5/9T
 RfbLK6dPQ5vZQeK3qIX66/xfDiq6CX2lPriPN11bZLuaRAJ+PQCHc5uvQ
 SV9GMYEppVvyfpEB2UQcsq/jqPq3Im7zk/b7iP7LtugbStghKXBV2BiPT g==;
X-CSE-ConnectionGUID: ou53jxx3TPC1KujW1YnNew==
X-CSE-MsgGUID: B436OzjVQpeS8jEbYtEnag==
X-IronPort-AV: E=McAfee;i="6800,10657,11824"; a="105657772"
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="105657772"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:21:26 -0700
X-CSE-ConnectionGUID: PtYxjKhSQGeV1dvfEuBDMg==
X-CSE-MsgGUID: n6CyyyPNS5ygP8d6j0/prQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,218,1774335600"; d="scan'208";a="242872458"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jun 2026 06:21:26 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 06:21:25 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 22 Jun 2026 06:21:25 -0700
Received: from CY3PR05CU001.outbound.protection.outlook.com (40.93.201.4) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 22 Jun 2026 06:21:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=WWepW2L9t2S9uzKmnXz5dArI3Ck9vgBMfjk4uohwK2/MQXB5p0XR6IKn8fjYuqxx59tvTiS9uJqhM3f8S732tY1RbmOoSwYG43HLRPp9j0aLdu9L+HfE22BBQ6kVRhXfD/Vlpsq1XI2VTS2k/kH121PYcFyCvkgCIE+hRY/CK/se6SEBr451dog+GLUN6T1hsHk5FGYC+je+86FGDzEwrWzIeN725n2FJk2EtEXuGFfHQnUO5nKbNWy0pXKVaEnlvBMJXph5u1jS1vXx4LDmBLV34FqmXDQ9mNaCLFRgALO+feIqzioXTU4ssiNDiuVLArO2pC54Bz293Bsl74/HDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aRisYWPDeYdz91BgU6f5JM61RkNIXh6NcCCcuiuGzU0=;
 b=FnYLNCL/Zy5OZOThDVQ9N6uanFSdFh3W9mZ0WyDocxUY2uNty0/17q37mnAXBx+psowfX0e32OJ8h0rr4TdG4YA1hHLqg1LGvVtlEMwL9aF0KHCsKdHVjUmc82g2n8itK9ZpIjqPPBjvIJ/QM8DOJCLrasr4cmqGEx1QKprkeW9cVxtT+O/zZxZlwLLVMiuTT6qu0wZIWUFwfOmaaigfRK3GF/8IqQ8u0LLKYzs72yHIOn+cXFctok0oYXmbaonNRObr3v3y5KH1HemVYlGK6QJcdl6sGRot3ivQ9Im35fvcyAUrkO4cP9b340fcIWYRUZTXpdt70tOOmqwN+E1RzQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ5PPF57F27BA08.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::82b) by SA0PR11MB4640.namprd11.prod.outlook.com
 (2603:10b6:806:9b::15) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.139.20; Mon, 22 Jun
 2026 13:21:22 +0000
Received: from SJ5PPF57F27BA08.namprd11.prod.outlook.com
 ([fe80::10f:5d3d:a8dd:569c]) by SJ5PPF57F27BA08.namprd11.prod.outlook.com
 ([fe80::10f:5d3d:a8dd:569c%7]) with mapi id 15.21.0139.018; Mon, 22 Jun 2026
 13:21:22 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH v2 03/28] drm/i915/dp_link_caps: Introduce DP link
 capability module
Thread-Topic: [PATCH v2 03/28] drm/i915/dp_link_caps: Introduce DP link
 capability module
Thread-Index: AQHc/cwZxgsAzmKWE0GdImnmO8kzXrZKmFKw
Date: Mon, 22 Jun 2026 13:21:22 +0000
Message-ID: <SJ5PPF57F27BA08C6DEE2C61CB56B907D29EFEF2@SJ5PPF57F27BA08.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-4-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ5PPF57F27BA08:EE_|SA0PR11MB4640:EE_
x-ms-office365-filtering-correlation-id: a3530e18-e6ca-46ae-4dd6-08ded0612736
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|23010399003|1800799024|366016|376014|38070700021|18002099003|22082099003|56012099006|11063799006|4143699003;
x-microsoft-antispam-message-info: CGtAFxg9E6U4dHIWbS4+xCPv/KscAIK6u8nZmemoFn7Tjxjkz5BcugrS5gmewIDqnVPBSaDcZN8hP7Sd6InxJx1BLJ7fh6pcUviXRG51C1ZAaI0SysxzFKX2K4KK7qEC1C5G9Papz4kGuS2mZFPWy1/UN05HNgOxXu/Nqt9YkJ4MqMI9yU3E2PNr2NjDQwoiPJzm1x78SngF1TwEAfzA7dC4wqKnRYh7+qNvvjkMZnF1RjafLtlqUeQVccK8Hz3gXHnb9Z0FUIMCtqBmJOzSpNdv7JnSnv1aNktT7O23XVCI7D3z0bbgrbyaAVZjK/WDtUcMVcu+6oKbbB9DajheUCHvHw7cwlqgpLLz3QNCFDyTDG91EMY/JBbuFCzdoLnUQRJFKQ6n/Qg1B/r/qEaU/bol7/4/qqWTH6055ZtAZ9YGrxLVpsIz9R+enB5AnQHQdHCfHz8jh5B8fPG+P7D+ZFhl9rziZRXi7dwmtaoQTsmgwB1MbqjvGEmf8bxSKXBEGiww0o7sg2Bu1gIFnuTgfD9cvyo9oHOedIvPWiltfVfpHNZ+LiVcO5pC7oYPuEEbiZPPFyNkjYYkMiOPWoeGypUuWGpTwZ6iLRkKHx993d4c3irTqaqUO2dbXwtv4BykHQ9en6Cec1JcL/bGT7LjeLB/tKQK1IPQBZbah/PejW1GvNk5Fcy6UTMxPn3SeeceKITCXgGjETClCeNbzsdR+YEjPkRcjZygvYN89quEcBQ=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF57F27BA08.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(23010399003)(1800799024)(366016)(376014)(38070700021)(18002099003)(22082099003)(56012099006)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Mnk2SXVtRFZqU3REckhPeitoYTUvb0dlSVJPbk5NaHBTR0dML0tBYTQ1WkFn?=
 =?utf-8?B?VXpNZGJJYmdWcC82UWxsbTJOOExycmdoMEozTy9uRDZtQU9rWml6dGtGQU1o?=
 =?utf-8?B?RnYyS3VVZWdMWFdmOVNYbjhFRlJ0MDEvR0RMblB1RnR1aHcwRVJTTGppK2hz?=
 =?utf-8?B?WTJ2b0tVTHRIbjNFZTg2M0VDRExvYisrUzF1U0ZneHBBM3o5TlBsSjk1ZDM4?=
 =?utf-8?B?UTNRY3I1S2F6SWdJck5GaXczdloxMDQ2b3ZldmloRHZsQk9aaDRGKzBpUlZX?=
 =?utf-8?B?WjZhQWhwNGhtVG40NkZucEdWTzVYbDh4VDYxaXdjRUp5SkRYN3cwSlhzZzVN?=
 =?utf-8?B?cHNOL0s3ZlBObnlXck5wRmxBRWNaYkVURVl1ejVtZS9DbDl6eTA5YlQvbnVX?=
 =?utf-8?B?WDhHOWZTNEZlOVptNmtoZGdTblRYVjdtK3FFWmtXd0tWcWMrSWlIS2tSL3ov?=
 =?utf-8?B?d0Y5MnFTWWMrYTEzL1NmQ2JWb0ZCV0p5aWFoWDVJaHZjY0FLWEw2WWU0N2ty?=
 =?utf-8?B?eDd0V1hPRHpReWM5eHBlYU9yeGJBbWN2Y0FnSzFabFUyMlJmOHdReHVrVUUx?=
 =?utf-8?B?NDRPendUalQxSmtDRCtQV0ZhcnE5UXgycU5iOVJWazNBMWtHVCttOUg1Mkhn?=
 =?utf-8?B?YjROQ05tNVZqRTJnNVlaSUNSdFM5V1kvRUFiZC9oN05na2dyUWsyTlJGRDNM?=
 =?utf-8?B?b0NUb3VVVDZNQ3JWeTVkRmc3SzA3cEEwckpCY2JycTdMZXhsNGlYNVBWeFJP?=
 =?utf-8?B?eTUybkNCQzFOdlFFSG9OWTd6bW1TUzFPWUhrWDFranBTaC9DZERkZjI5MnU4?=
 =?utf-8?B?VGRYVU94M2JLdzdzc2MweUpyZVgyZ0dNdUkwSHhzR3JyYmM4TXRPVkx1M0VJ?=
 =?utf-8?B?MXhPZzNUQzczb3VKRm9BV3JndUl0TnpkdkIvUmlFSFVGVnkrZEt5dlNEV2lj?=
 =?utf-8?B?LzV5SFl4WWhqL21mVzBhcGNJK1FPS2RjZlJiY0Rsa2daMWV2RHVPeXlSTWFP?=
 =?utf-8?B?Uyt1QlZkS1djNXRUa1luM2RFUmlRMlR2ZWw5UGJEN3R5WDg5R3F6Sk0vQXlG?=
 =?utf-8?B?cVd1MHhUV1ZLZHZGVTdGdlFxUW9SQVRKQzNsYm5CUzcyazloYU1iQk9BRW94?=
 =?utf-8?B?Lyt0aHdEd0VhZ3I5aVh5SHJuK1lOYXVMcDZEYjJYeFptamZtUk1TdmcxbUhY?=
 =?utf-8?B?QUhBenRteFR5WHJaM1hVbXYxZExxZ1ZjQlo2cVBhY252QTZRMDlMdFFYTXFS?=
 =?utf-8?B?RHZubFZCUWlSOHphRmhoNlh0d0dSM2tWa3ZKaCt3dm9tUFkwMGFvS01Xd25T?=
 =?utf-8?B?QWNvZVY5K2UzNktSdFZDam9adloyZmhDRVJsOFE0U3BZT3JFdDRONzQzL0h5?=
 =?utf-8?B?SWtiRFlrTGhjaWp6MzMvU0Z4S0xiVDhmR05nbmVTbjFsNHQwd0VJK3o0MEtY?=
 =?utf-8?B?ZW9TNXN1aXZTSHJmUDFQQWl5bFV5N2RGa2IxRFlCMklPbDVPeHdvcXFoZFY1?=
 =?utf-8?B?aFVjNlY1M25MQUdCZFFtelNhUy9PTjk4Wk9iaXRWN2dxeFMwUG0rMTJ1OEZn?=
 =?utf-8?B?UXI2N3JUZTZWeG4vcUViSEltUHJ5U2tYK05FaEdVZnI0aUM1WE9scStrSXZG?=
 =?utf-8?B?ODdVYWI4SEVBdzJGWjdkVzdQZ09IZnZCR1NwV3Q5NC9scjdOb083NE42NUwz?=
 =?utf-8?B?TDJvK3FFc2JjcTBSYUxxZnZsMStkWVFMV1F1Z2E2TjJmc091cjZjcVpIdDFC?=
 =?utf-8?B?NmNlaGZvSWp6MFlxMlVvVTczekx5TnVKV2gzZElPUm52ZlpBWVB1V2dYYkd0?=
 =?utf-8?B?UFhveThpQTc5b0lJQjUzaURMUzBDTFQ4dGZFNmI1WUx4dmlKNjZHUkg1VURi?=
 =?utf-8?B?NXhndnBBTkJQanNtZzVMdExPWURXT1kzbVRDeE9NaEF2K2hFR0J6eXV5aVdT?=
 =?utf-8?B?NWNVMGd1Mjh6SVU2NndIVFpjb1U5USs3aWkzQmJ4Vit3THlQbFQ1aDRiTUta?=
 =?utf-8?B?MXRKUy9iRWsrQnhOR0t5WDQ3VUZQdzNxSmpKUzQ1NFpjTlI2RDRQYlRCZ2do?=
 =?utf-8?B?bjJGUTNRWmVVYWRBdlFXNG04cTVCcnNnRy8rbDliRTVkZU5wL1JTc094bm9u?=
 =?utf-8?B?ZDBPUmFNQmtpVDEzMUpaU3R5Z3c5UFJ4a0NNWThXUFh4c09lTm42VVZ6Tk03?=
 =?utf-8?B?eC92M04yYUZlTkwwOEpKR2ZjL1pBeEhlTk0wa2k4SjBST25LOWtmV0RCUWsx?=
 =?utf-8?B?N0YreEEya2NuaDFxcE5IVjdBZE5scGRXUC9oU0owbGtYV1NPSUtpbktBNTBD?=
 =?utf-8?Q?LmV4N9XSG3YtPXOMGp?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: afD8WUuDz6xYOIw1bULt3k/3zRR6pOzmZD2cw2mpMf+4z+nU8F7dKygH+CfPir968ElCN9piWGjjky4Rdho1Dcm6J5Mhj/eEcaEsfjotClPGYy6hszaScV1pF12Sdr/LsbFybtFzTRDHNU9UBjTiF6v7jiEZ0fUdaL+0sXvC0UfKTKzXCQ8IHDQg64O+jewMlmkn0ELbcf09O3HHP341w/h+Hh+faMb9uR1fg63kib9zFffdMQmxnILkYXkv+s7lB4CWzH/A+jiKHinuL/DK+c1+X1WDfd2Y4KOEBhuwOFvxr6UTh7IwbS5VKvP1RkODJTml+e7r+QkLNFKeNf+YsQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF57F27BA08.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a3530e18-e6ca-46ae-4dd6-08ded0612736
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Jun 2026 13:21:22.1381 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: h7c//ZDhKcSxIa9h+dYiLie9dcfv4/dxw5B9+4MtzxiYrRKXcnYVwuKWvo5SP+EMNpAvXNL11dj2KBRtMfDSkQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA0PR11MB4640
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,intel.com:from_mime,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email,SJ5PPF57F27BA08.namprd11.prod.outlook.com:mid];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0B0B86AFC85

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjYgMjMuMDgNCj4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzog
TmlrdWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2
MiAwMy8yOF0gZHJtL2k5MTUvZHBfbGlua19jYXBzOiBJbnRyb2R1Y2UgRFAgbGluayBjYXBhYmls
aXR5IG1vZHVsZQ0KPiANCj4gU3RhcnQgaXNvbGF0aW5nIHRoZSBEUCBsaW5rIGNhcGFiaWxpdHkg
bG9naWMgZnJvbSB0aGUgZ2VuZXJpYyBEUCBjb2RlIGJ5DQo+IGFkZGluZyBhIHNlcGFyYXRlIGlu
dGVsX2RwX2xpbmtfY2FwcyBtb2R1bGUgYW5kIGEgY29ycmVzcG9uZGluZyBzdGF0ZQ0KPiBvYmpl
Y3QuDQo+IA0KPiBBbGxvY2F0ZSB0aGUgc3RhdGUgc28gaXQgY2FuIHJlbWFpbiBvcGFxdWUgd2l0
aGluIGl0cyBtb2R1bGUuDQo+IA0KPiBGb2xsb3ctdXAgY2hhbmdlcyB3aWxsIG1vdmUgbGluayBj
YXBhYmlsaXR5IGhlbHBlcnMgYW5kIHN0YXRlIGZyb20NCj4gaW50ZWxfZHAuYyBhbmQgaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jIHRvIHRoZSBuZXcgbW9kdWxlIGFuZCBzdGF0ZS4NCj4gDQo+IHYy
OiBSZW1vdmUgdW5uZWNlc3NhcnkgZnVuY3Rpb24gZG9jdW1lbnRhdGlvbi4gKEphbmkpDQo+IA0K
PiBDYzogSmFuaSBOaWt1bGEgPGphbmkubmlrdWxhQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQtYnk6
IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTog
SW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L01ha2VmaWxlICAgICAgICAgICAgICAgICB8ICAxICsNCj4gIC4uLi9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaCAgICB8ICAyICsrDQo+ICBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgICAgICAgfCAgOSArKysrKysNCj4gIC4uLi9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYyB8IDMwICsrKysrKysrKysrKysr
KysrKysNCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaCB8
IDEyICsrKysrKysrDQo+ICBkcml2ZXJzL2dwdS9kcm0veGUvTWFrZWZpbGUgICAgICAgICAgICAg
ICAgICAgfCAgMSArDQo+ICA2IGZpbGVzIGNoYW5nZWQsIDU1IGluc2VydGlvbnMoKykNCj4gIGNy
ZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xp
bmtfY2Fwcy5jDQo+ICBjcmVhdGUgbW9kZSAxMDA2NDQgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gaW5k
ZXggMDc4MDJhN2Y0Y2U1MC4uODFlMTZmMzc3NjQxYiAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvTWFrZWZpbGUNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvTWFrZWZp
bGUNCj4gQEAgLTM1Niw2ICszNTYsNyBAQCBpOTE1LXkgKz0gXA0KPiAgCWRpc3BsYXkvaW50ZWxf
ZHBfYXV4Lm8gXA0KPiAgCWRpc3BsYXkvaW50ZWxfZHBfYXV4X2JhY2tsaWdodC5vIFwNCj4gIAlk
aXNwbGF5L2ludGVsX2RwX2hkY3AubyBcDQo+ICsJZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMu
byBcDQo+ICAJZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLm8gXA0KPiAgCWRpc3BsYXkv
aW50ZWxfZHBfbXN0Lm8gXA0KPiAgCWRpc3BsYXkvaW50ZWxfZHBfdGVzdC5vIFwNCj4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4g
aW5kZXggYzA5MmM4MWVkMmViNi4uMTA5MzNjY2RlYjMxZSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gKysrIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gQEAgLTU4
LDYgKzU4LDcgQEAgc3RydWN0IGNlY19ub3RpZmllcjsNCj4gIHN0cnVjdCBkcm1fcHJpbnRlcjsN
Cj4gIHN0cnVjdCBpbnRlbF9jb25uZWN0b3I7DQo+ICBzdHJ1Y3QgaW50ZWxfZGRpX2J1Zl90cmFu
czsNCj4gK3N0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHM7DQo+ICBzdHJ1Y3QgaW50ZWxfZHBfbGlu
a190cmFpbmluZzsNCj4gIHN0cnVjdCBpbnRlbF9mYmM7DQo+ICBzdHJ1Y3QgaW50ZWxfZ2xvYmFs
X29ianNfc3RhdGU7DQo+IEBAIC0xODY3LDYgKzE4NjgsNyBAQCBzdHJ1Y3QgaW50ZWxfZHAgew0K
PiAgCQlpbnQgZm9yY2VfbGFuZV9jb3VudDsNCj4gIAkJaW50IGZvcmNlX3JhdGU7DQo+ICAJCXN0
cnVjdCBpbnRlbF9kcF9saW5rX3RyYWluaW5nICp0cmFpbmluZzsNCj4gKwkJc3RydWN0IGludGVs
X2RwX2xpbmtfY2FwcyAqY2FwczsNCj4gIAl9IGxpbms7DQo+ICAJYm9vbCByZXNldF9saW5rX3Bh
cmFtczsNCj4gIAlpbnQgbXNvX2xpbmtfY291bnQ7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwLmMNCj4gaW5kZXggMDBlYjNmNTEwMzM4My4uZmEwOTVjNGRiN2ZlNiAxMDA2
NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiBAQCAtNzEsNiAr
NzEsNyBAQA0KPiAgI2luY2x1ZGUgImludGVsX2RwLmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZHBf
YXV4LmgiDQo+ICAjaW5jbHVkZSAiaW50ZWxfZHBfaGRjcC5oIg0KPiArI2luY2x1ZGUgImludGVs
X2RwX2xpbmtfY2Fwcy5oIg0KPiAgI2luY2x1ZGUgImludGVsX2RwX2xpbmtfdHJhaW5pbmcuaCIN
Cj4gICNpbmNsdWRlICJpbnRlbF9kcF9tc3QuaCINCj4gICNpbmNsdWRlICJpbnRlbF9kcF90ZXN0
LmgiDQo+IEBAIC03NDU4LDEwICs3NDU5LDE4IEBAIGludCBpbnRlbF9kcF9saW5rX2luaXQoc3Ry
dWN0IGludGVsX2RwICppbnRlbF9kcCkNCj4gIAlpZiAoIWludGVsX2RwLT5saW5rLnRyYWluaW5n
KQ0KPiAgCQlyZXR1cm4gLUVOT01FTTsNCj4gDQo+ICsJaW50ZWxfZHAtPmxpbmsuY2FwcyA9IGlu
dGVsX2RwX2xpbmtfY2Fwc19pbml0KGludGVsX2RwKTsNCj4gKwlpZiAoIWludGVsX2RwLT5saW5r
LmNhcHMpIHsNCj4gKwkJaW50ZWxfZHBfbGlua190cmFpbmluZ19jbGVhbnVwKGludGVsX2RwLT5s
aW5rLnRyYWluaW5nKTsNCj4gKw0KPiArCQlyZXR1cm4gLUVOT01FTTsNCj4gKwl9DQo+ICsNCj4g
IAlyZXR1cm4gMDsNCj4gIH0NCj4gDQo+ICB2b2lkIGludGVsX2RwX2xpbmtfY2xlYW51cChzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiArCWludGVsX2RwX2xpbmtfY2Fwc19jbGVh
bnVwKGludGVsX2RwLT5saW5rLmNhcHMpOw0KPiAgCWludGVsX2RwX2xpbmtfdHJhaW5pbmdfY2xl
YW51cChpbnRlbF9kcC0+bGluay50cmFpbmluZyk7DQo+ICB9DQo+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5jIGIvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYw0KPiBuZXcgZmlsZSBtb2Rl
IDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAwLi42Mzk4OWQ5N2VmZmQ3DQo+IC0tLSAvZGV2
L251bGwNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5r
X2NhcHMuYw0KPiBAQCAtMCwwICsxLDMwIEBADQo+ICsvLyBTUERYLUxpY2Vuc2UtSWRlbnRpZmll
cjogTUlUDQo+ICsvKg0KPiArICogQ29weXJpZ2h0IMKpIDIwMjYgSW50ZWwgQ29ycG9yYXRpb24N
Cj4gKyAqLw0KPiArDQo+ICsjaW5jbHVkZSA8bGludXgvc2xhYi5oPg0KPiArDQo+ICsjaW5jbHVk
ZSAiaW50ZWxfZHBfbGlua19jYXBzLmgiDQo+ICsNCj4gK3N0cnVjdCBpbnRlbF9kcF9saW5rX2Nh
cHMgew0KPiArCXN0cnVjdCBpbnRlbF9kcCAqZHA7DQo+ICt9Ow0KPiArDQo+ICtzdHJ1Y3QgaW50
ZWxfZHBfbGlua19jYXBzICppbnRlbF9kcF9saW5rX2NhcHNfaW5pdChzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKQ0KPiArew0KPiArCXN0cnVjdCBpbnRlbF9kcF9saW5rX2NhcHMgKmxpbmtfY2Fw
czsNCj4gKw0KPiArCWxpbmtfY2FwcyA9IGt6YWxsb2Nfb2JqKCpsaW5rX2NhcHMpOw0KPiArCWlm
ICghbGlua19jYXBzKQ0KPiArCQlyZXR1cm4gTlVMTDsNCj4gKw0KPiArCWxpbmtfY2Fwcy0+ZHAg
PSBpbnRlbF9kcDsNCj4gKw0KPiArCXJldHVybiBsaW5rX2NhcHM7DQo+ICt9DQo+ICsNCj4gK3Zv
aWQgaW50ZWxfZHBfbGlua19jYXBzX2NsZWFudXAoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAq
bGlua19jYXBzKQ0KPiArew0KPiArCWtmcmVlKGxpbmtfY2Fwcyk7DQo+ICt9DQo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oIGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiBuZXcg
ZmlsZSBtb2RlIDEwMDY0NA0KPiBpbmRleCAwMDAwMDAwMDAwMDAwLi4wNTBiMjc5NDYzZDZlDQo+
IC0tLSAvZGV2L251bGwNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9kcF9saW5rX2NhcHMuaA0KPiBAQCAtMCwwICsxLDEyIEBADQo+ICsvKiBTUERYLUxpY2Vuc2Ut
SWRlbnRpZmllcjogTUlUICovDQo+ICsvKiBDb3B5cmlnaHQgwqkgMjAyNiBJbnRlbCBDb3Jwb3Jh
dGlvbiAqLw0KPiArDQo+ICsjaWZuZGVmIF9fSU5URUxfRFBfTElOS19DQVBTX0hfXw0KPiArI2Rl
ZmluZSBfX0lOVEVMX0RQX0xJTktfQ0FQU19IX18NCj4gKw0KPiArc3RydWN0IGludGVsX2RwOw0K
PiArDQo+ICtzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICppbnRlbF9kcF9saW5rX2NhcHNfaW5p
dChzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gK3ZvaWQgaW50ZWxfZHBfbGlua19jYXBz
X2NsZWFudXAoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzKTsNCj4gKw0KPiAr
I2VuZGlmIC8qIF9fSU5URUxfRFBfTElOS19DQVBTX0hfXyAqLw0KPiBkaWZmIC0tZ2l0IGEvZHJp
dmVycy9ncHUvZHJtL3hlL01ha2VmaWxlIGIvZHJpdmVycy9ncHUvZHJtL3hlL01ha2VmaWxlDQo+
IGluZGV4IDhlN2IxNDY4ODBmNDYuLmU1YTA0MjUzZTczYmYgMTAwNjQ0DQo+IC0tLSBhL2RyaXZl
cnMvZ3B1L2RybS94ZS9NYWtlZmlsZQ0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0veGUvTWFrZWZp
bGUNCj4gQEAgLTI3OCw2ICsyNzgsNyBAQCB4ZS0kKENPTkZJR19EUk1fWEVfRElTUExBWSkgKz0g
XA0KPiAgCWk5MTUtZGlzcGxheS9pbnRlbF9kcF9hdXgubyBcDQo+ICAJaTkxNS1kaXNwbGF5L2lu
dGVsX2RwX2F1eF9iYWNrbGlnaHQubyBcDQo+ICAJaTkxNS1kaXNwbGF5L2ludGVsX2RwX2hkY3Au
byBcDQo+ICsJaTkxNS1kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5vIFwNCj4gIAlpOTE1LWRp
c3BsYXkvaW50ZWxfZHBfbGlua190cmFpbmluZy5vIFwNCj4gIAlpOTE1LWRpc3BsYXkvaW50ZWxf
ZHBfbXN0Lm8gXA0KPiAgCWk5MTUtZGlzcGxheS9pbnRlbF9kcF90ZXN0Lm8gXA0KPiAtLQ0KPiAy
LjQ5LjENCg0K
