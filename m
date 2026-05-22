Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uMRCHcfZD2o/QQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 06:21:27 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 248CE5AE91E
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 06:21:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A56E210E247;
	Fri, 22 May 2026 04:21:22 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B8Y33shN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0372610E05F;
 Fri, 22 May 2026 04:21:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779423681; x=1810959681;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=az/5JfWElrKNpf0+/sL/ZUY4m40MbsFdzy1hax9yCiU=;
 b=B8Y33shNwzkJ5fv/ps1I1xwNB0VeJ2KTLwvElxAToakJC7rdsprtoi6e
 ZbH7Dflq0MEUwS8QX0dhQSe9qhv07f+pl0csNQPapcsdX6GwXjiCvljzr
 rYp2R9K7JPE09QYeNyzC17+5fHHVIYrwZqk0EQkJvMForzkgmnTvACyb0
 cXbtD1tVD9O5Ax1kKdwdkGyxD8TKMRvHPyvPNeF8ueztFl+9CSBa+vvUA
 V2vkyq1sDneszXrisC5GP8Hz2k7g5nnDnPObNjHxPYwsn+4R7A4u+ItyV
 rg8jbm9/V/LfvRJhKrwG80iK0iXSL0Sld1C67YaTf2Q2zULPnd2YGeGyQ g==;
X-CSE-ConnectionGUID: 49m5aqpbSZiEt9iDxvEUCw==
X-CSE-MsgGUID: i6TvPndZQza8/yuEGTgyag==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="80333219"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="80333219"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 21:21:20 -0700
X-CSE-ConnectionGUID: uQCJmrIBQ+qjoaiBdj3IxA==
X-CSE-MsgGUID: y5ZbI4hxQ7WS3uYgLCKTvw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="238160969"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 21:21:20 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 21:21:19 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 21:21:19 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.15) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 21:21:19 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gQvF23PvGP7niabV2wZ16F55czRuLn47G4gdXnUKrZxLtHYPs7t5qlbyQbZtqK5qu0k6idqhYIt7IoKxO4s7IeVwp5sX9XIvS8gbV2D9d0oUotsnuYulH0Se/WJ0168dhE8Wh1eRD41vFLs+JGiWNl10vc02CUcEjSPGPqPZPn0MBO6UxkfcImTlBsPLlRzWmsCHscXgSqQMP/8OZUA92n9widdKIOUsc6BIIh3OccZfl/vCK/nU4/oy99K/0S1y3hUqkiuUzWcjU+cFo2D9vGoyfNOymaHBqX4bGclof9pzDJQkDiGvmWaOhuxNw8rGeV6+nD6ul28XIH+181Fr7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=az/5JfWElrKNpf0+/sL/ZUY4m40MbsFdzy1hax9yCiU=;
 b=YMy+RMKAcF8U57WJ9ufRj4HEyIFGpdkHsqcoRg1VIWO5picLRS3hDoKGKBi00BGxgvzjbmW/kVcBIkeAxkUtMpfvXSKnBtU/Q1ZmfNbmI/eT/m2N5FWUAcb+f0BZhS1nghTY0MQygb6Aqgc9mtCjm7SQWs6hTK0XCxnKYr0JtRVia+MnOpIaC4O2V9oikrtGXkRIlobab5fwFqnvwqrROEz5ty4ZhQnvUseaOH8EqFBrPZKmhxHN2L41Da4QOG/B39NfM3RxR2yg1Fr/ai8jkUZQuZzAbLiug9lFx0hwvs67lB8eQBDoTVq+4NotWuG65aXs3RO9hRC8LEYasgHm/w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by PH8PR11MB9879.namprd11.prod.outlook.com
 (2603:10b6:510:3c5::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 04:21:12 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::8015:f6df:e093:52bd%8]) with mapi id 15.21.0048.016; Fri, 22 May 2026
 04:21:12 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: John Harrison <John.Harrison@Igalia.com>,
 "freedreno@lists.freedesktop.org" <freedreno@lists.freedesktop.org>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "kernel-list@raspberrypi.com" <kernel-list@raspberrypi.com>,
 "amd-gfx@lists.freedesktop.org" <amd-gfx@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v4 0/7] Refactor drm_writeback_connector structure
Thread-Topic: [PATCH v4 0/7] Refactor drm_writeback_connector structure
Thread-Index: AQHc6OPs++x9WBuM1kOckmuHvNZjJbYY1VMAgACdZbA=
Date: Fri, 22 May 2026 04:21:12 +0000
Message-ID: <DM3PPF208195D8D4F9A49CF8335279F238BE30F2@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260521053708.1475129-1-suraj.kandpal@intel.com>
 <add51789-7291-40d6-9c8a-f68f46f1f11c@Igalia.com>
In-Reply-To: <add51789-7291-40d6-9c8a-f68f46f1f11c@Igalia.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|PH8PR11MB9879:EE_
x-ms-office365-filtering-correlation-id: a5cf489c-e6ce-4f65-3f75-08deb7b98ede
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|56012099003|18002099003|22082099003|38070700021|4143699003|11063799006;
x-microsoft-antispam-message-info: 0Og0egBMx/UyG+QmRobLJ+ho8ywsHxMdVeMAT5APxB4+eqY072bk3ZZEoOq+fjIjjZBFM+H4jvsj0pBmTQ3F7at3p1mvnRawBXcckJrU6qw5wMZBA3HDxEqHokjnMipd30m3u9rb5w1C+GQrRPtKOa5jyKHaiwzl2KogSVX8M6XwFIZfCwExxASnKW5HU0jo/j/yHjRV5losKny5LvIJ59JuT2tPc22qXH+ncBzOAZHcjTkwFjYkUC854J/vJo0SO1CCF8gvmpdBYdOpx7lttAmzvi7vC+KI6NbiW2/X8fdOlAkjpRlUobafmTA8qE9EHR0E0OwvZ0gBd+aT6BU/LdpWbHROTSI/SEBxG6RhnXq6fcNyLcdQjbncqcRXoqRKw2VXVAlP7LR+iiZoePtEbOF7P5ivYLad1fP/WJ+7AX3T+Kl4nLsbocPjFobBeMGJWKZet+H14uCgwUyuHu7UJZEBzQZb0ma1ANANK8toFhhinR5FoUigXFVUbyJ9JJOmlRDZJ6YWFijPYvrYZwzEd1CX+zNs0f/aZAhst5RRtO11bSF1gge5KBeywvJf0/mcMWIH9zvpSy+TQthZFpFdme/YwKa8xIqMhUXvJz2IfjfKOCP1seUt8H13XaMtmRmyHGRHOTPdBmWylO1xA5Kkxz5kYgO1ZAxYQcGJUcBGlNRrg4pKtux7eao7t5pPoFOX
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(56012099003)(18002099003)(22082099003)(38070700021)(4143699003)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?T2U1QVBJVUczT2twTGNmbTZmN293a3JGY1dSQmROaDhGWU96TVlrRFRtNCtX?=
 =?utf-8?B?NHU5bzE0N2gwVnFqcFNuOFExVVpna3BEcERJZjEyNzJmMTVxVE9qejJxSXEr?=
 =?utf-8?B?T2ltZGo5MXNDekVHeSs0OXhSMGFBbHhDZkpYUmhNYzNyUWhPTVlvZGNrQkdh?=
 =?utf-8?B?cHRhbDlsN3MvNU1DcGxmRXl6dmFyTy9RL1ovV1VncXpvM3N1Q3F3TC9SS0ht?=
 =?utf-8?B?cUpiaFNzQ1hyaWVTQmdkUVJuM0dWSEZqUGZteUJlSXJRODRaR3R1QUhRRUtq?=
 =?utf-8?B?aHNNUkhqaWFkZkhtOGNkdFhvMnMzSXl4Z213dUJsSkVqMmFZd2xXZEVHVUo3?=
 =?utf-8?B?TG5abDFEamRvOW96MDVtZURnRDRtRWFCcVlKdFNKT1RDWnNIQXlUaEFKR2Rl?=
 =?utf-8?B?aGtPTUJSbXBibHZybEhrbTlPdEVNT0wyeWFUTmhvUFJycXpGVkxGblRYbUE0?=
 =?utf-8?B?S1B2REdGeHFvYXBVSjJURm9hSk04SU5kWHptUjRQMTE5K2lpMXhMRFVQaG4r?=
 =?utf-8?B?RHQ0SUozMGM5RWJ5T0pKTllPQ1RJU2llU2M1QWYyTUJVT1QyODZESWVHNFI0?=
 =?utf-8?B?VFBiQ0xDZFFEcllPOTNiR2xETzVxb0JMZlA0K1JNSE1Zc3hORFhDcStwby9x?=
 =?utf-8?B?M1dzSjZQNTNveEk0VmJuRTdUdDE5SnZDTTVaRmJYVVVKY2xEZE96MGtrS1p1?=
 =?utf-8?B?WHhQRTMyK2cxemsxRFk1SDNHeXJSM2xBWDErS2N1QTJ1UlFaSytabEw0NFJy?=
 =?utf-8?B?cHFvTU00WjE0TlhMY1YwRlE5OUQ1NG5Eck1jMnErdFVFK25NNWtZTitSc25y?=
 =?utf-8?B?dEtaeFZrc0ttNHh2ZVdGc0RrVzJVQUdNdkRSMG8zVG5mTXl6aFhDSy9HM29Z?=
 =?utf-8?B?TldjdFRSTFIzdjdzMXdXdi84WFFjRTViUTI2VnBWNDhYK1gxUFRjY0N3SzJR?=
 =?utf-8?B?cnloOFYrMzhsZjVWeDFBUlUyRmRPMnQ5Wnc2UTRrbDNxMzBTUHVYSnU0Q2l0?=
 =?utf-8?B?SmZoWGs5Rk94MkMvaVFrYzg4MTYrLzk1cCs4KzJWRTN2T2w1S25PV1NhMEY0?=
 =?utf-8?B?TXFYYURyVG1tMXF2ZC83cXZpNUZlRHVQdGJqcnk1TGZycGlIUStVWWdlc1Ft?=
 =?utf-8?B?WEo2YUkvVU5NT0QxUy9pQ3JmTHhkdzFZRmhrOG9Nd0FSOWtOaTBxM0JtRnpV?=
 =?utf-8?B?eGExeFMxYTZUaUFhcGdOZnpFOWtnSE5IWUVnZzN6Tks4eWxpZmpnMkdMb2Mw?=
 =?utf-8?B?RFZHd2dxbFFGLzRxWDVISGJFU0Zsc2UzUDNISmpLY2c3djZGa0YyTHRnZDBC?=
 =?utf-8?B?TzhHeGRXaU5uaStrNzR5RXZvOFc1ak55NDIxcm1xaWFxNnlJVFZlazBGcUkz?=
 =?utf-8?B?ak9xVlZIN1IxaHVHalZ5OXRXRkVJbnNiMkFqNkVpd0JzRnNDeTFwTldEVUlD?=
 =?utf-8?B?Z2IvQnZGd203bHdPUVhNSlJVbGtudkZEMnRISHR5L01QSDVKNG9IQ0ZYQ1dD?=
 =?utf-8?B?R1NSNDVyODFzTENqREN5Z3Bwek90UTZoWUd3OENhVitKWU9odWtOT01xZ0tm?=
 =?utf-8?B?UGE2YWt2VVpFMlk0K1Y5dTE3TTM2MUthNkpNdWVncU9UZUJraE9vbzM2eVZt?=
 =?utf-8?B?YWpNR2NkMHNEejJpanJNS2hTM2J0Vk5va3Bva0p6K3pUTCtyTWg1VGNwdUlT?=
 =?utf-8?B?WW5vajR4SlRUQ3VDbmpXL2lmK0laVXh4N0NCRUdWU3N5QzVadERoN0dhSys2?=
 =?utf-8?B?OHVyeDc2cS9KaG9XaytSaTcwczR5VTNRWkZ3Z2k1ZFR0eDNaZ201bGdxTnJT?=
 =?utf-8?B?dTd2TTh4MXJZSUxxaUN2MVU4Y3IwT3htWTBXQTQwOWxvVCt0bjZVV1dudGl0?=
 =?utf-8?B?ZXVwUWFaTFpyUFVsdXF0SVNmTmNicWkzSFZJMVE2Q0xTZDA2K2tBSUd3NVA3?=
 =?utf-8?B?QTJtTUdtMG1NTVMrUy9kNkNSUTBlNGNHb3drMUFGS1JybDd5UzhJemRIMXRt?=
 =?utf-8?B?Nks1Q1BveXVOd0dvZUpGUHY3ZWNDeEpkeW9CUXFldmZDa2hpYkNCQjUyVEF3?=
 =?utf-8?B?ZWtRMWQvUUI2V2lWb0RQTUlVUVRHTC92S20vVVFQa0RzRVVyUE0wZGhYaUVY?=
 =?utf-8?B?UXo0WWdjeDlyQzFkMXVnVmpVWXBJM1RtNEMzSExtSjBnRExoWnE5QlFtUjBU?=
 =?utf-8?B?SnBmUzlldm5rUC9iY0RsRklNNkxONlpNa2Y1Lzc4MzZITFpoRjluMGw3QUpx?=
 =?utf-8?B?blhRelBnVEszZ0dMdTR4bzhMWHQzNzVoRU95RnE1SGMrYUhuc1d5S3pQZUNl?=
 =?utf-8?B?MStDNXdOSWpFSWFKWllpbkRGR0lqM1BMQ1k0dERvaExKdmtKTkwvdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: og/MADh+tGXkz5yQWCOoO3ZooL/2IolsBzBTMmdt8Iq9Y4wZ3y/ti0nOIoBY/TN+svgIr7Wi9NH2PlL949tjDn2hJNErPx88Ckfsv4E4M0GwIeW4ZAICfL8CtsMfohUWo8zDTCjCCChULxvp1oJFQPVl3JHtyspW43aqND4r/8Q/Ztm/CFv+V/HHSwPwkia4aZZEB0rHE4oOgoioCFpzQZeO3Vld0M3o/yMHMMDk45A1itB3JiM8SeNNNsRGdYKlXviuWEd4g19r3cEilzPSre3BSAPRbaOEPTvXmGHxOgly0H/jSvWeSF+h5950+BePua9C6xJfSk2SKv+2gnSmGw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a5cf489c-e6ce-4f65-3f75-08deb7b98ede
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 04:21:12.6339 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: y+fClsl4rnLY55Cew7I4Za9JvjkOLpycf33BgcSk15npjZ1H0/ZDmJyR83Rhv8VVZjWK9AMl9n8ZrGnnIVnHOg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB9879
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
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.947];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 248CE5AE91E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

PiBTdWJqZWN0OiBSZTogW1BBVENIIHY0IDAvN10gUmVmYWN0b3IgZHJtX3dyaXRlYmFja19jb25u
ZWN0b3Igc3RydWN0dXJlDQo+IA0KPiBPbiA1LzIwLzI2IDIyOjM3LCBTdXJhaiBLYW5kcGFsIHdy
b3RlOg0KPiA+IFNvbWUgZHJpdmVycyBjYW5ub3Qgd29yayB3aXRoIHRoZSBjdXJyZW50IGRlc2ln
biB3aGVyZSB0aGUgY29ubmVjdG9yDQo+ID4gaXMgZW1iZWRkZWQgd2l0aGluIHRoZSBkcm1fd3Jp
dGViYWNrX2Nvbm5lY3RvciBzdWNoIGFzIGludGVsIGFuZCBzb21lDQo+ID4gZHJpdmVycyB0aGF0
IGNhbiBnZXQgaXQgd29ya2luZyBlbmQgdXAgYWRkaW5nIGEgbG90IG9mIGNoZWNrcyBhbGwNCj4g
PiBhcm91bmQgdGhlIGNvZGUgdG8gY2hlY2sgaWYgaXQncyBhIHdyaXRlYmFjayBjb25lbmN0b3Ig
b3Igbm90Lg0KPiA+IFRoaXMgaXMgZHVlIHRvIHRoZSBpbmhlcml0YW5jZSBsaW1pdGF0aW9uIGlu
IEMuDQo+ID4gVGhpcyBzZXJpZXMgaW50ZW5kcyB0byBzb2x2ZSBpdCBieSBtb3ZpbmcgdGhlIGRy
bV93cml0ZWJhY2tfY29ubmVjdG9yDQo+ID4gd2l0aGluIHRoZSBkcm1fY29ubmVjdG9yIGFuZCBy
ZW1vdmUgdGhlIGRybV9jb25uZWN0b3IgYmFzZSB3aGljaCB3YXMNCj4gPiBpbiBkcm1fd3JpdGVi
YWNrX2Nvbm5lY3Rvci4gVGhpcyBpcyBkb25lIGluIHVuaW9uIHdpdGggaGRtaSBjb25uZWN0b3IN
Cj4gPiB3aXRoaW4gZHJtX2Nvbm5lY3RvciB0byBzYXZlIG1lbW9yeSBhbmQgc2luY2UgZHJtX2Nv
bm5lY3RvciBjYW5ub3QgYmUNCj4gPiBib3RoIGhkbWkgYW5kIHdyaXRlYmFjayBpdCBzZXJ2ZXMg
aXMgd2VsbC4NCj4gPiBBIFJGQyB2ZXJzaW9uIHdhcyBmbG9hdGVkIGFuZCBkaXNjdXNzaW9uIGhh
ZCB0YWtlbiBwbGFjZSBhdCBbMV0gd2hpY2gNCj4gPiBraWNrZWQgb2YgdGhpcyBtb3JlIGNsZWFu
ZXIgc2VyaWVzLg0KPiA+IFdlIGRvIGFsbCBvdGhlciByZXF1aXJlZCBtb2RpZmljYXRpb25zIHRo
YXQgY29tZSB3aXRoIHRoZXNlIGNoYW5nZXMNCj4gPiBhbG9uZyB3aXRoIGFkZGl0aW9uIG9mIG5l
dyBmdW5jdGlvbiB3aGljaCByZXR1cm5zIHRoZSBkcm1fY29ubmVjdG9yDQo+ID4gd2hlbiBkcm1f
d3JpdGViYWNrX2Nvbm5lY3RvciBpcyBwcmVzZW50Lg0KPiA+IFRoaXMgc2VyaWVzIGFsc28gY29u
dGFpbnMgc29tZSB3cml0ZWJhY2sgQVBJIGNsZWFudXBzIGFzIGEgY29uc2VxdWVuY2UNCj4gPiBv
ZiB3cml0ZWJhY2sgY29ubmVjdG9yIG1vdmluZyBpbnRvIGRybV9jb25uZWN0b3IgQWxsIGRyaXZl
cnMgd2lsbCBiZQ0KPiA+IGV4cGVjdGVkIHRvIGFsbG9jYXRlIHRoZSBkcm1fY29ubmVjdG9yLg0K
PiA+IFRoaXMgZGlzY3Vzc2lvbiB3YXMgdGlnZ2VyZWQgZnJvbSBbMl0gYW5kIHNpdHMgb24gdG9w
IG9mIERtaXRyeSdzDQo+ID4gc2VyaWVzIHNlZSBbM10uDQo+ID4NCj4gPiBbMV0gaHR0cHM6Ly9w
YXRjaHdvcmsuZnJlZWRlc2t0b3Aub3JnL3Nlcmllcy8xNTI3NTgvDQo+ID4gWzJdIGh0dHBzOi8v
cGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTUyMTA2Lw0KPiA+IFszXSBodHRwczov
L3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVzLzE1MjQyMC8NCj4gUVE6IFdoYXQgdHJl
ZSBpcyB0aGlzIHBhdGNoIHNldCBiYXNlZCBvbj8gSSB0cmllZCB0byBhcHBseSBpdCBsb2NhbGx5
IGJ1dCBJIGdldA0KPiBjb25mbGljdHMgbm8gbWF0dGVyIHdoYXQgYmFzZWxpbmUgSSB1c2UuIEkn
dmUgdHJpZWQgZnVsbCBrZXJuZWwsIGRybS10aXAgYW5kIGRybS0NCj4gbmV4dC4gRG1pdHJ5J3Mg
cGF0Y2ggc2V0LCBbM10gYWJvdmUsIGFwcGxpZXMgZmluZSBidXQgSSBnZXQgY29uZmxpY3RzIGlu
IHRoZSByY2FyDQo+IGFuZCBtYWxpIGZpbGVzIHdoZW4gdHJ5aW5nIHRvIGFwcGx5IHRoaXMgc2V0
Lg0KDQpIbW0gSSBwcm9iYWJseSBuZWVkIHRvIHRha2UgaGlzIGxhdGVzdCByZXZpc2lvbiBhbmQg
YXBwbHkgbXkgc2VyaWVzIG9uIHRvcCBvZiBpdCBhZ2FpbiB0aGVuIHNlbmQgSXQgdGhhdCBzaG91
bGQgcmVzb2x2ZSBpdC4NClRoaXMgc2hvdWxkIGJlIGZpeGVkIGJ5IG5leHQgcmV2aXNpb24uDQoN
ClJlZ2FyZHMsDQpTdXJhaiBLYW5kcGFsIA0KDQo+IA0KPiBUaGFua3MsDQo+IEpvaG4uDQo+IA0K
PiA+DQo+ID4gU2lnbmVkLW9mZi1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRl
bC5jb20+DQo+ID4NCj4gPiBTdXJhaiBLYW5kcGFsICg3KToNCj4gPiAgICBkcm06IHdyaXRlYmFj
azogUmVmYWN0b3IgZHJtX3dyaXRlYmFja19jb25uZWN0b3Igc3RydWN0dXJlDQo+ID4gICAgZHJt
OiB3cml0ZWJhY2s6IE1vZGlmeSB3cml0ZWJhY2sgaW5pdCBoZWxwZXJzDQo+ID4gICAgZHJtOiB3
cml0ZWJhY2s6IE1vZGlmeSBkcm1fd3JpdGViYWNrX3F1ZXVlX2pvYiBoZWxwZXINCj4gPiAgICBk
cm06IHdyaXRlYmFjazogTW9kaWZ5IGRybV93cml0ZWJhY2tfc2lnbmFsX2NvbXBsZXRpb24gaGVs
cGVyDQo+ID4gICAgZHJtOiB3cml0ZWJhY2s6IE1vZGlmeSBkcm1fd3JpdGViYWNrX2dldF9vdXRf
ZmVuY2UgaGVscGVyDQo+ID4gICAgZHJtOiB3cml0ZWJhY2s6IE1vZGlmeSBwcmVwYXJlX3dyaXRl
YmFja19qb2IgaGVscGVyDQo+ID4gICAgZHJtOiB3cml0ZWJhY2s6IE1vZGlmeSBjbGVhbnVwX3dy
aXRlYmFja19qb2IgaGVscGVyDQo+ID4NCj4gPiAgIC4uLi9ncHUvZHJtL2FtZC9kaXNwbGF5L2Ft
ZGdwdV9kbS9hbWRncHVfZG0uYyB8IDEwICstLQ0KPiA+ICAgLi4uL2dwdS9kcm0vYW1kL2Rpc3Bs
YXkvYW1kZ3B1X2RtL2FtZGdwdV9kbS5oIHwgIDIgKy0NCj4gPiAgIC4uLi9kcm0vYW1kL2Rpc3Bs
YXkvYW1kZ3B1X2RtL2FtZGdwdV9kbV93Yi5jICB8IDEyICstLQ0KPiA+ICAgLi4uL2dwdS9kcm0v
YXJtL2Rpc3BsYXkva29tZWRhL2tvbWVkYV9jcnRjLmMgIHwgIDIgKy0NCj4gPiAgIC4uLi9ncHUv
ZHJtL2FybS9kaXNwbGF5L2tvbWVkYS9rb21lZGFfa21zLmggICB8ICA2ICstDQo+ID4gICAuLi4v
YXJtL2Rpc3BsYXkva29tZWRhL2tvbWVkYV93Yl9jb25uZWN0b3IuYyAgfCAxMSArLS0NCj4gPiAg
IGRyaXZlcnMvZ3B1L2RybS9hcm0vbWFsaWRwX2NydGMuYyAgICAgICAgICAgICB8ICAyICstDQo+
ID4gICBkcml2ZXJzL2dwdS9kcm0vYXJtL21hbGlkcF9kcnYuaCAgICAgICAgICAgICAgfCAgMiAr
LQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL2FybS9tYWxpZHBfbXcuYyAgICAgICAgICAgICAgIHwg
IDcgKy0NCj4gPiAgIGRyaXZlcnMvZ3B1L2RybS9kcm1fYXRvbWljX3VhcGkuYyAgICAgICAgICAg
ICB8ICA0ICstDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0vZHJtX3dyaXRlYmFjay5jICAgICAgICAg
ICAgICAgfCA1MCArKysrKysrLS0tLS0NCj4gPiAgIC4uLi9kcm0vbXNtL2Rpc3AvZHB1MS9kcHVf
ZW5jb2Rlcl9waHlzX3diLmMgICB8ICA5ICsrLQ0KPiA+ICAgZHJpdmVycy9ncHUvZHJtL21zbS9k
aXNwL2RwdTEvZHB1X3dyaXRlYmFjay5jIHwgMTAgKy0tDQo+ID4gICBkcml2ZXJzL2dwdS9kcm0v
bXNtL2Rpc3AvZHB1MS9kcHVfd3JpdGViYWNrLmggfCAgNCArLQ0KPiA+ICAgLi4uL2dwdS9kcm0v
cmVuZXNhcy9yY2FyLWR1L3JjYXJfZHVfY3J0Yy5oICAgIHwgIDYgKy0NCj4gPiAgIC4uLi9kcm0v
cmVuZXNhcy9yY2FyLWR1L3JjYXJfZHVfd3JpdGViYWNrLmMgICB8IDE2ICsrLS0NCj4gPiAgIGRy
aXZlcnMvZ3B1L2RybS92YzQvdmM0X3R4cC5jICAgICAgICAgICAgICAgICB8ICA4ICstDQo+ID4g
ICBkcml2ZXJzL2dwdS9kcm0vdmttcy92a21zX2Rydi5oICAgICAgICAgICAgICAgfCAgMiArLQ0K
PiA+ICAgZHJpdmVycy9ncHUvZHJtL3ZrbXMvdmttc193cml0ZWJhY2suYyAgICAgICAgIHwgMTUg
KystLQ0KPiA+ICAgaW5jbHVkZS9kcm0vZHJtX2Nvbm5lY3Rvci5oICAgICAgICAgICAgICAgICAg
IHwgNjkgKysrKysrKysrKysrKysrKy0NCj4gPiAgIGluY2x1ZGUvZHJtL2RybV9tb2Rlc2V0X2hl
bHBlcl92dGFibGVzLmggICAgICB8ICA0ICstDQo+ID4gICBpbmNsdWRlL2RybS9kcm1fd3JpdGVi
YWNrLmggICAgICAgICAgICAgICAgICAgfCA3NiArKy0tLS0tLS0tLS0tLS0tLS0tDQo+ID4gICAy
MiBmaWxlcyBjaGFuZ2VkLCAxNjQgaW5zZXJ0aW9ucygrKSwgMTYzIGRlbGV0aW9ucygtKQ0KPiA+
DQoNCg==
