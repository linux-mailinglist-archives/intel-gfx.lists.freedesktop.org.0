Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yLZ8O/dusWlVvAIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 14:32:40 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EB7B264977
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 14:32:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE39810E201;
	Wed, 11 Mar 2026 13:32:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="KIR6zgoL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F324810E201;
 Wed, 11 Mar 2026 13:32:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773235957; x=1804771957;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=9nE37TOswEGmNbJqMdpa9Qs+6Z0OmADOn8GrmD8yyis=;
 b=KIR6zgoL0+EYixWyjf4QErrdc4AHZCZF9eH3VVt0fYCCFFxYDQjs+i20
 b3pc5GXdEEHKcAzrF3dAFWP4h7UbXGQtpN3PywyomvMR0Ayfl4cgRPo15
 rTcya9HM6VjEpfLxTKHocjYIracXUwxfHN7QbdXei+6NudlAMLeGRUJyP
 j5/0dLBqruq4ChgHCqyGtRfUfWdUQ1RoGhSpcaNedJGf2N2hCRQ4q4iEt
 DUlodkL/1qPi+oCM9K0OkEUtbVR0Rmw6FeUPzU88H+opcNpKpuHDkZejO
 7VuArzCeKc/pNhwQGzZsQndoznBQnq/BabtlyGXZynCayb66zN7pzWCRF w==;
X-CSE-ConnectionGUID: SKHUpEa2Sge9iNauIvkE6Q==
X-CSE-MsgGUID: p999Eyy6Sm2RzOBaXW7fmg==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="74201015"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="74201015"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 06:32:34 -0700
X-CSE-ConnectionGUID: KkU0dyQ4RIiqrXWgUAf9pw==
X-CSE-MsgGUID: FSu6hiXrTUiCaxlLXRvQ1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="218329442"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 06:32:33 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 06:32:32 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 06:32:32 -0700
Received: from BN1PR04CU002.outbound.protection.outlook.com (52.101.56.29) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 06:32:32 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YnE5CYtJZzN6l2gIFrqFkUe2B6ZIIubwJxO6tNWiOBQx+ej2eNkRTFZ2erS9X4SQEJEuE/TJ9MmofPPljBa5IQcCo26bEjLwLzy4im0lgPGwela7IJzVA+pHtIz/2yGKwsXII843KwcEiVx6hYzb1iEXb2ZjBZPMLXKS+5nu0k9lLpmZqHOEnZzw7Cxu+fJASk1sCAM4ZUpxUHCuW6Q0vJ9QJyrFZ78ETemIUAFO5JBUyo1oiEOojnyI5HnLUMHGVQghJ8aroGC6CTSCE6/oZqAnxcXWz5d++D1PrPveXaL5I/pLot1tDKXydAWh+4YbfXzqMgZmvMmxnXyX8YgZqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9nE37TOswEGmNbJqMdpa9Qs+6Z0OmADOn8GrmD8yyis=;
 b=PwKV9PQe/B3H7OpHhrWtNQzolewEo35BLdVE5GR6XzpjyScmdznQrxfUOwqPDtELDR/gbC7LxOLtyoDQZsf8yMs2hUb5PMDkyfEjRINHpEAt7y4sjjpuJBbHjbbYEKNw8e3y68P8ZOQAuwVFlT/RdJ+kctQz1eHYVHWkgm0ADOLJZDwVAWqC9/b5vL9wKTegOafZ4zXGvjEcZE6WPUd7jhHpHCA8RjMYeyi/7rpkAxrEBYzX36d7Ki5RECheBR+9UGSlpkg4tzxWXi4C8xoDGeG/7AuLYswPAOyMxn/gVylmaMFF5Txur3UJscqfKG6cPy8rTigLTx0O93o2wG4wrw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by PH7PR11MB7147.namprd11.prod.outlook.com
 (2603:10b6:510:1ee::17) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.11; Wed, 11 Mar
 2026 13:32:28 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Wed, 11 Mar 2026
 13:32:28 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Thread-Topic: [PATCH v2 14/24] drm/i915/lt_phy: Add xe3plpd .get_freq hook
Thread-Index: AQHcq9jiWeecF5m6fUuYfcTTEL3LP7WoxkkAgACY0eA=
Date: Wed, 11 Mar 2026 13:32:28 +0000
Message-ID: <DS4PPF69154114FECA8702984943F58B0F6EF47A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-15-mika.kahola@intel.com>
 <DM3PPF208195D8DD255BE31B410C1711237E347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DD255BE31B410C1711237E347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|PH7PR11MB7147:EE_
x-ms-office365-filtering-correlation-id: 781b6381-e4de-4792-0857-08de7f72a3ef
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|22082099003|56012099003|18002099003|7053199007;
x-microsoft-antispam-message-info: Ixn0I113jHhEtpyV2YvSIH8yZrKUzSISTvNPrzbyx9BGz1KObtKi6iVX1rtVHQf6+syLqlWqbo7afXURDFiYZJk/2Yu77dfLuPSWbHwaqhnhVBmgx9ATFyPxR2Ij9ZXSiHHqvye3npfUg5JiGDfuEJc/l0kMEovVjkoH+FkHsxukQDmB4V6Yk0TeRWiM3U9opSXYL5POOh7MfsHSJzLJ7VuzIEi97e6DkmIcoNQWrixWSk0t7i4M+9xYPO7yFJ54OR3/FZ7Z2J1DWct6ZZ6p7VvpTE29/HPH4j4yacxow9RcghOqfTbBhbXHsF2God59wnItckM9w7rauqN9tcVlnFapffOCH7oVyV1eO5NMVBf0/cEUQabTXI8yIKFGGHBVLGyGMYyLI/acdlEZeJhc3AMTF92tFvmBOuPzx7adepPCivNcHUEXaVMGeQufmsKpHSJBQ0HNXMSZHtARyRnVJY/ZpwycTxrN5tsQfy3ifDtl09DImo2i6aukLA1g8w1JGveJ8kk7Y2UUaBfSmYWxQ4LzZ0hmWqiibMElATt9cz9rC5DpXmE4mRX8l7oJSFwxkiwyoATZI9/4Y5CUhn/hxcOeIu7JMEIWfNBsReryq59+i+5RuS14mzed7j0y0k+cq9es17a8biFgwUojzkLoWU8yTTSeVOd5XmEN/QxRygk+7gxNyBA81cspvI0szRSEi2Dp7cYF58A/rmVQWkenoDxPZka1ecD00DORiXZEKGxldNqXMoMKkb9+d9O1joPznyskmms6Cs0qcS7ToY26F5FyF7sP5P5YyrFp70Pd1Bw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(22082099003)(56012099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZXpsMmZMelhINlc4eVk4VVN6cExhME5HSTdFd0crQ2pRVERnMWNEbGl6Z29U?=
 =?utf-8?B?M21LdDB6NGM5SHhSWHU4SXJiVzRHZkR3Rlo3akNHYTJzTi9wZFFOa0lXb1hn?=
 =?utf-8?B?RVE4UithMnNkMkVvZEhtdjE4RkhrOTNXR2ROMHBON2R0RitvWkhyL25DUHVO?=
 =?utf-8?B?TGlCVUsrUUo2QzMzWmJLRmR5K2lPMmp3bjJZTHRXWlp3MW9hZFFVQTdQcG9i?=
 =?utf-8?B?NW80bWlVa3RVQW9BQTFmdE1NbXQxNUpjZ2lFMmVRUDZjOHdoQnlIVmZZcS9J?=
 =?utf-8?B?RTBnZWQyY0NEZmNqRTFScERkN2RyOCtIL29MTUl5QnZsNG5weGU4MWVkUUdy?=
 =?utf-8?B?V3FUQkNoU3FHR3dPcENDRlEvYi92TGFnOHFsYUEvUkVxSUJPUFZvN1ZDYlZY?=
 =?utf-8?B?ZmhaeGh5SFpMMlg0YjBOblhKT0ZqZy9wV2tFNzllNTVybVJIU1BlZkVBWnVE?=
 =?utf-8?B?c3lhOXY0cWh2K2ltWUhmR2hWT3F3RGorTmIvVVRhNytjMFBmSkdJdXRrWGlZ?=
 =?utf-8?B?ellXbGJRN2QyUmdGK085clVYOGZnNGFhZ2c3ZlhOemFmZm8wcVJTa2N0dXdi?=
 =?utf-8?B?WVI5d09jbDQ3ZjFTSTZNaDhQcCtMWGluZnZxVXMzUlNKcGdzVUczbTdVeDM4?=
 =?utf-8?B?bGgxZ2FzV1BRdkNac01lblIrekc3cnkyaUNSeE5XVElUV29HQlNROUIxR01X?=
 =?utf-8?B?SkxSblYxdUhnT1UrN2JkaDVEa24rZURJakt4QmFiRkFnQWtWUFVVR0p6WVRL?=
 =?utf-8?B?V0hramcwT1NwQlFsUnFoOEtMdjg4UDVBK3pnVnpEak5xWFJaT3paUjlBd2F2?=
 =?utf-8?B?ZENyQjFnWWdrMi81Qk81K2RYVk1zaHpqVkFMNGYraEc1WjFWM2NXQnJyd0M3?=
 =?utf-8?B?RkhOOTd4b2JxMDhTMmJ4SjYwN2Iya1pJWmkvbDJ0M3U0c3d1Q2NGSEdDUGZF?=
 =?utf-8?B?aHR0bTN6bHRLWVZWM25VdmNKVmJUdEF2Z2pYY2c1NGFmeUFtS3pmQmNlWDk3?=
 =?utf-8?B?U2ovVVNtOGYwK0hEbFg5K2VOU2RsSTZ3ZVF3eXN6TXhZbHVCTzlxLzVYcXIx?=
 =?utf-8?B?Rko0OUhmeXYvOU9ETEFSLzZydU9LNk5aNHJXVGZtR2hnWm1hMGwzdGJSWnF0?=
 =?utf-8?B?UUpDWGQxZXIwa09hWnlkR2JlYzYxRGYxT2t6MlJwYk5sYktMTGE4anFjd3Ns?=
 =?utf-8?B?ZVBvaUJIckVLNkhFN0YyaVB2eW9Uc0R4RDdmNVM4Q0pRQXF4WTBKMUdBdmNp?=
 =?utf-8?B?NXIrQzRXRVJCeDB2V20wUXB4TFl2SGdMcitEVmZuakhNSUtsRzZFV0J5NTNx?=
 =?utf-8?B?aEVwQTBiQmpjU0grTUplKzFLbkhaU0JCNm1hZVgrbEU1MUd5QTlqZFRxREJK?=
 =?utf-8?B?UWJFcXdTSFhUTmZhaDFSVlZWRUpQT1dhdHJES0gyeGZ5dUtjSXlQMUVJOHhH?=
 =?utf-8?B?QnJKU1ZyT1lKakMrWVhNemtPSFI3eW5FWlhGZFFZSG5KbWdxMFlKVjJkNGdy?=
 =?utf-8?B?c2llbE95cTR5THMvbU53WnoxeGFLa2l5dUl5bGQ5UFpyL2V3VllBS2I1RENh?=
 =?utf-8?B?aEdSVHQvbWNvNkJBZWtmd2tFc1FoaXZyL1g2QVltdWpvY0dSaWo3WkY4S3Ux?=
 =?utf-8?B?NzhXZFRVQlh6MkVQaXlEamg1dlFJSElxalVMM2lwdCsyZXlZSzh1UkM3WGNu?=
 =?utf-8?B?NnhuanYrZFdjWTNOTFhVVFhEQmNrU1IwWGZpdDBCcHZuUVUvdDZCMmhmUEZM?=
 =?utf-8?B?M3Q2RXlPOG1nUkNnWXF3d2FXakloZ3Rac0drMFBRYnRrT3FmMnFkdXd3b2V6?=
 =?utf-8?B?MmJNT0tlM0pBYkZDbHF6OW5ueTdsd2R5RUVRM1lUMWFGZG1MYlZWOFhHV0VL?=
 =?utf-8?B?bmJTRDF3cHdtdHRiNDRFOUpLYUpUU2ZlM3BuNGhzRXFvNGFEYjNwWllzQXZS?=
 =?utf-8?B?aW1PWmhFWnYyY2V5OXZMQ295SWM4Sm5FTzkvYzQ3R2lNMVBrSjByVExqbUFP?=
 =?utf-8?B?am9aMFI2ZXFXQ0cxaW03bXhkSnlGNjh3b045cy9OWHo5cyt0NWN5bWZtT1pN?=
 =?utf-8?B?aURCeW9SaXkydXE3RGM3Vzd1N0NhNXlGSXZLMUlReGlKeWdvREVNWGpJZUZG?=
 =?utf-8?B?dmcrV2JoVFlDUTRhdW42YTBMYzJxb3VvN214VDFNQ2xMYmRNdnA4aGd4blRp?=
 =?utf-8?B?NXJObzNyRE0rSWlBaEhPbDljeFdxNFhmWHE4eDAyNUs4L1pjWG5CTVg0cmhT?=
 =?utf-8?B?RHlIR3ZuRm4vUS9vZGZEalp5U1FCNGhjK0plb2thVXhJVjNtZDN0SHJiYXR1?=
 =?utf-8?B?bGNWNU9FaGFpbWk5ZDBBQzVwSnRoNTl3NmNxWGxXOVNWRlJWSFp6SXFOalRC?=
 =?utf-8?Q?SqBK/e6/FW/g97cjUrXoPVwLuzbiwhrqQhHWrrOZrTbWI?=
x-ms-exchange-antispam-messagedata-1: 2iJ0NXMednY+5A==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: Oqz9X+EUROBl2+5USjqN3caZ7MsjKr4XAvtDv5BEJpsv+qhPi0NXKQEQ8GqIYtRZs5tjJQd7qLawzifp8N/BEiAMv38r4y+6rIWcRydaCbsFv+1hp7hQ4uKkR5ql0ZIq349nvxoMd98JDSRVRQI5TbtQaQ4HpLPQPbD682sqVIc8+F8IzFvgcY6DIaFKNP7rkfz+uvWplGV7kDMamzk87di0KzYWUrBNk3nXxhIa2b7mkoSEbQ4Pny8OJhIIvscGxk5pcpx1oR8DBSh5WO+acPdZ6Hwnpag4Iy8EMrKkHp3XX2iv7x5N5iRBEiES1IOVFBsT0MnWgkPa37BTbSVS6A==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 781b6381-e4de-4792-0857-08de7f72a3ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 13:32:28.6084 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: sn6fV3kJldy80TO6KhU6TeaAAHaQfNuAoZSihqE8cos5fU9dvD83vMIStzR/lW94vtp+hJVSCpXt14xUlupHpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7147
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
X-Rspamd-Queue-Id: 3EB7B264977
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogS2FuZHBhbCwgU3VyYWog
PHN1cmFqLmthbmRwYWxAaW50ZWwuY29tPg0KPiBTZW50OiBXZWRuZXNkYXksIDExIE1hcmNoIDIw
MjYgNi4yNQ0KPiBUbzogS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+OyBpbnRl
bC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5v
cmcNCj4gQ2M6IEthaG9sYSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0
OiBSRTogW1BBVENIIHYyIDE0LzI0XSBkcm0vaTkxNS9sdF9waHk6IEFkZCB4ZTNwbHBkIC5nZXRf
ZnJlcSBob29rDQo+IA0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2MiAxNC8yNF0gZHJtL2k5MTUvbHRf
cGh5OiBBZGQgeGUzcGxwZCAuZ2V0X2ZyZXEgaG9vaw0KPiA+DQo+ID4gQWRkIC5nZXRfZnJlcSBm
dW5jdGlvbiBob29rIHRvIHN1cHBvcnQgZHBsbCBmcmFtZXdvcmsgZm9yIHhlM3BscGQgcGxhdGZv
cm0uDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBNaWthIEthaG9sYSA8bWlrYS5rYWhvbGFAaW50
ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2RwbGwuYyAgICAgfCAgNSAtLS0tLQ0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwbGxfbWdyLmMgfCAxMyArKysrKysrKysrKysrDQo+ID4gIDIgZmlsZXMgY2hhbmdl
ZCwgMTMgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGwuYw0KPiA+IGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsLmMNCj4gPiBpbmRleCAxNDdiYWE3Nzc4
NTYuLjg4ZjExY2I4YzVlMSAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX2RwbGwuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZHBsbC5jDQo+ID4gQEAgLTEyMTksMTcgKzEyMTksMTIgQEAgc3RhdGljIGludCB4
ZTNwbHBkX2NydGNfY29tcHV0ZV9jbG9jayhzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUg
KnN0YXRlLA0KPiA+ICAJCWludGVsX2F0b21pY19nZXRfbmV3X2NydGNfc3RhdGUoc3RhdGUsIGNy
dGMpOw0KPiA+ICAJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPQ0KPiA+ICAJCWludGVs
X2dldF9jcnRjX25ld19lbmNvZGVyKHN0YXRlLCBjcnRjX3N0YXRlKTsNCj4gPiAtCXN0cnVjdCBp
bnRlbF9kaXNwbGF5ICpkaXNwbGF5ID0gdG9faW50ZWxfZGlzcGxheShlbmNvZGVyKTsNCj4gPiAg
CWludCByZXQ7DQo+ID4NCj4gPiAgCXJldCA9IGludGVsX2x0X3BoeV9wbGxfY2FsY19zdGF0ZShj
cnRjX3N0YXRlLCBlbmNvZGVyLCAmY3J0Y19zdGF0ZS0NCj4gPiA+ZHBsbF9od19zdGF0ZSk7DQo+
ID4gIAlpZiAocmV0KQ0KPiA+ICAJCXJldHVybiByZXQ7DQo+ID4NCj4gPiAtCS8qIFRPRE86IERv
IHRoZSByZWFkYmFjayB2aWEgaW50ZWxfY29tcHV0ZV9zaGFyZWRfZHBsbHMoKSAqLw0KPiA+IC0J
Y3J0Y19zdGF0ZS0+cG9ydF9jbG9jayA9DQo+ID4gLQkJCWludGVsX2x0X3BoeV9jYWxjX3BvcnRf
Y2xvY2soZGlzcGxheSwgJmNydGNfc3RhdGUtDQo+ID4gPmRwbGxfaHdfc3RhdGUubHRwbGwpOw0K
PiA+IC0NCj4gDQo+IERvbuKAmXQgcmVtb3ZlIHRoaXMgaGVyZSBpbiB0aGlzIHBhdGNoIHJpZ2h0
IG5vdyB4ZTNwbHBkX3BsbF9nZXRfZnJlcSB3b24ndCBnZXQgY2FsbGVkIHRpbGwgd2UgdG90YWxs
eSBlbmFibGUgZHBsbCBmcmFtZXdvcmsNCj4gYnJlYWtpbmcgdGhlIGZ1bmN0aW9uYWxpdHkgaW4g
YmV0d2Vlbi4NCj4gSnVzdCBrZWVwIHRoZSBmdW5jdGlvbiBkZWZpbml0aW9uIGFuZCBhc3NpZ25t
ZW50IHRvIHJlc3BlY3RpdmUgaG9vayBoZXJlLg0KPiBJbGwgZ28gdGhyb3VnaCBhbGwgdGhlIHBh
dGNoZXMgYW5kIGlkZW50aWZ5IHRoZSBiZXN0IHBsYWNlIHRvIHJlbW92ZSBpdCB0byBQcmVzZXJ2
ZSBiaXNlY3RhYmlsaXR5DQoNCk9rLCBJIHdpbGwga2VlcCB0aGVzZSBsaW5lcyBoZXJlIGZvciBu
b3cuDQoNClRoYW5rcyENCg0KLU1pa2EtDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IFN1cmFqIEthbmRw
YWwNCj4gDQo+ID4gIAljcnRjX3N0YXRlLT5ody5hZGp1c3RlZF9tb2RlLmNydGNfY2xvY2sgPQ0K
PiA+IGludGVsX2NydGNfZG90Y2xvY2soY3J0Y19zdGF0ZSk7DQo+ID4NCj4gPiAgCXJldHVybiAw
Ow0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rw
bGxfbWdyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9t
Z3IuYw0KPiA+IGluZGV4IDY1MDI5MTY3OTNmNS4uNDEyNTgyZTI5Y2E2IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+IEBA
IC00NTgzLDggKzQ1ODMsMjEgQEAgc3RhdGljIGJvb2wgeGUzcGxwZF9wbGxfZ2V0X2h3X3N0YXRl
KHN0cnVjdA0KPiA+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gIAlyZXR1cm4gaW50ZWxf
bHRfcGh5X3BsbF9yZWFkb3V0X2h3X3N0YXRlKGVuY29kZXIsICZkcGxsX2h3X3N0YXRlLQ0KPiA+
ID5sdHBsbCk7ICB9DQo+ID4NCj4gPiArc3RhdGljIGludCB4ZTNwbHBkX3BsbF9nZXRfZnJlcShz
dHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiArCQkJCWNvbnN0IHN0cnVjdCBpbnRl
bF9kcGxsICpwbGwsDQo+ID4gKwkJCQljb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9od19zdGF0ZQ0K
PiA+ICpkcGxsX2h3X3N0YXRlKSB7DQo+ID4gKwlzdHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rl
ciA9IGdldF9pbnRlbF9lbmNvZGVyKGRpc3BsYXksIHBsbCk7DQo+ID4gKw0KPiA+ICsJaWYgKGRy
bV9XQVJOX09OKGRpc3BsYXktPmRybSwgIWVuY29kZXIpKQ0KPiA+ICsJCXJldHVybiAtRUlOVkFM
Ow0KPiA+ICsNCj4gPiArCXJldHVybiBpbnRlbF9sdF9waHlfY2FsY19wb3J0X2Nsb2NrKGRpc3Bs
YXksICZkcGxsX2h3X3N0YXRlLT5sdHBsbCk7DQo+ID4gK30NCj4gPiArDQo+ID4gIHN0YXRpYyBj
b25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9mdW5jcyB4ZTNwbHBkX3BsbF9mdW5jcyA9IHsNCj4gPiAg
CS5nZXRfaHdfc3RhdGUgPSB4ZTNwbHBkX3BsbF9nZXRfaHdfc3RhdGUsDQo+ID4gKwkuZ2V0X2Zy
ZXEgPSB4ZTNwbHBkX3BsbF9nZXRfZnJlcSwNCj4gPiAgfTsNCj4gPg0KPiA+ICBzdGF0aWMgY29u
c3Qgc3RydWN0IGRwbGxfaW5mbyB4ZTNwbHBkX3BsbHNbXSA9IHsNCj4gPiAtLQ0KPiA+IDIuNDMu
MA0KDQo=
