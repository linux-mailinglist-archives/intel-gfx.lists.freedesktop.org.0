Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kKbfG0RTsWn8tgIAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:34:28 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 19A6D262F26
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Mar 2026 12:34:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AD6010E898;
	Wed, 11 Mar 2026 11:34:25 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Z54VT7NE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D6A5610E896;
 Wed, 11 Mar 2026 11:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773228864; x=1804764864;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=q19g1HwqlHomt/F/soWMHK6/HZdYhxxwQNQdM1Qtfg0=;
 b=Z54VT7NERGOnrqsdTaR0pExBjtsxnDUGqkvubzhr9ErgLALTJKPdjqHB
 DxL22VH7pDBUZvMLpkPsUB8BoEyfpkirHug4mh6ePbbp1gHPSBfnYkANc
 7neqKCaCR1xPKvHNp3ZWJpXUmI14feUgMM/G2yw3K2TX/0Pyi6/TJnzO2
 iWQQjO/PYpd5x6mPK6tPU+hsCNC2hlz5FuoJ8gwB8zWvf7ZlLLTmrWPz4
 aybhuNS0YBBUHYwNvqwL8kQOaifnZuZK9K8OK3kfIaGDnO4gMVXELP8zu
 JFVbKk18J6ispHNATYTC8qO8rSZZuaf/dl6/550ZUGhIVi4SgbYqOUALc Q==;
X-CSE-ConnectionGUID: Zr6m7TFxRyWsJ0n11j/vPA==
X-CSE-MsgGUID: 39OWA5C8TK2y0wuKF9fzKA==
X-IronPort-AV: E=McAfee;i="6800,10657,11725"; a="91674619"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="91674619"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:34:24 -0700
X-CSE-ConnectionGUID: 5TQxYNKSRXeTUECWP4IZHg==
X-CSE-MsgGUID: 9hBX4zHyQWuGnxvDHU0Hwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="225396079"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 04:34:23 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 04:34:22 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 11 Mar 2026 04:34:22 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.71) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 11 Mar 2026 04:34:22 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=L0rFgYLmLxYKR+1iG8s0Kb8G210dXDVlWgwBuoO2PaJMgb4C4ruQwGCQeMQ7SnFiUV5Fxh2sWqdq8R6sXi7a7Su81JNpzoOJ7R6hj9RGhpMJ9jqef4Yq/ygFRRb5A4vyG21O4vmzYs+yYYzp/wGbAtvfiLCI3TjiM2Rma6ODGGW+MLWf2IOjpRO557j66Mb47xms4+fm8bSfNMdDsF2I1otkDT2Ir1nZZD/9XwErtDLbJvQQVksBthVND8COF6IinI5fagVlkjpCsZnkxzwZW+YD22QM9S+d+17ZBUmxeGpY2XTL+BoXkF/Utcx8FXsXfm4WYPMIXHKjsKq37DZdAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=q19g1HwqlHomt/F/soWMHK6/HZdYhxxwQNQdM1Qtfg0=;
 b=Xs9QsGH/yVxOv1BcxQ6lFUK0EsBUKZCchkB4kNSl2jv4QFBcgGKB0iTDbRg6muOlTHok3GR0VQxJyZQ3p1sYEUv4LU5cn8A/aY+VZPVuNqxflk+lQz/IsYjtXndWC6TBCFgoiiITTHGVfCOW91J/8QO48vQkLKW353itkfy/KMdmkHVh0fe0QHLtykwjObOVEAgH59l9/xOmwNZkTL63btUJb9wlbR//cIWLJRI1ODiWzSoEVonz8juBRw4ZmsIAwRuaphQCW+4WR/Lh3eN8eu2GUha3cM1ezqOC0FoJCmVWw1e4lCNPnPE+Wx48Kafav7wd4jE3g5w72M2thYbRFg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by BL3PR11MB6529.namprd11.prod.outlook.com
 (2603:10b6:208:38c::19) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9723.4; Wed, 11 Mar
 2026 11:34:20 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::c241:4530:b5a1:30c8%3]) with mapi id 15.20.9587.017; Wed, 11 Mar 2026
 11:34:19 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Thread-Topic: [PATCH v2 18/24] drm/i915/lt_phy: Add .disable_clock hook on DDI
Thread-Index: AQHcq9jmICfzccPX1EuaepTbk6+pu7Wo2NGAgAAH/ACAAFyU0A==
Date: Wed, 11 Mar 2026 11:34:19 +0000
Message-ID: <DS4PPF69154114F0909DC12C157E7BB1FEAEF47A@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260304131423.1017821-1-mika.kahola@intel.com>
 <20260304131423.1017821-19-mika.kahola@intel.com>
 <DM3PPF208195D8D181A8242316BE048F2DBE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <DM3PPF208195D8DA28F91EA07828AC2610AE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
In-Reply-To: <DM3PPF208195D8DA28F91EA07828AC2610AE347A@DM3PPF208195D8D.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|BL3PR11MB6529:EE_
x-ms-office365-filtering-correlation-id: 5f2d7295-33f6-44d8-94da-08de7f6222b4
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|366016|1800799024|376014|38070700021|56012099003|22082099003|18002099003|7053199007;
x-microsoft-antispam-message-info: aY13iLisHDQ1iGNe78O7XD49EiMfRK9tdDm/e8V3k4Y9AQGpV875+XBnczNakfr4gpxpAqkLS8rtos6sHGodLmRr5x6XSpCcIHMJ4sdJSKF2j3yx+WirqQc733MU5PTMXt6RKqHx3XR1Ip8R2FRBdHMHdcWdJaW4uZztPKIFHSe7l4fskeTYpJKIOwgvfkaD5donxUCh4a3UAKLb5g1o5GBBQRR/0cu+Qc4FUmGYKrxXj2ZLNEfYYOFQF7H4B+ilX/7+/F/n3ZI+LW/Pu/4b6gRBQEckPfpg4Cx6wllTN19Xs5BAR8XuZthHiRCrbex2LbomK3zKEQ1q9QsDeq/uoULwsz9I8SZXOArCJScU5PXdSAgDB1wyrenDM0GO2z2u52XVd0FKYqhyekSD5JZQLMj1x00ixQTQoQJisvMTe1ZXxj2VgMKKhbC7nCI49etRZGGrdv6I/lOooeiDcCgJOCvcMrmMInV+pQYeT1Fv0CxN/8z7gxFE0XbRzOzg0c4Vm5FfRCpIIZtpiA6BfusK/QGoJj7qm7koDSa7igShcTCPO9nNyPaKwQCHadC/SdQujZonWYkjTcoNMZMmCOwGh/FWOAL79i5EhvBvEL2TqsORG0pJdH1fPeAdsRFcVQq6YOKPqSriPIUUfqiQ0CoWqFQcwG3KL3QZeGSHmCkKTijyCxMT6iwg+G2Mg7psqqq1GbFKC4/mTjNk+Kr3R/8CqY8UaREWWgVIvbkI/XzUeYrkr72GIQmsUYjX9V6k6DFC8PYSb1Kb1cwxJHawPXD/TTvtXnT7JkO++dqq4ZnEmpY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(366016)(1800799024)(376014)(38070700021)(56012099003)(22082099003)(18002099003)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ME15TWwwSXJiUFZhY2FyU1hvNXE0TnhnaGhMNE5oY1RuUVBrdjlEcWd3aDJq?=
 =?utf-8?B?aWRUU1dXRWZIME5SaXRTZStQUE9namxmb2pTYk5oQU5zSGdWb2kxd2ZXTzRL?=
 =?utf-8?B?bjRJUTdWWnlqMHkrYzhlL2czTFVqOU9zQ2toclVZaHBqV3J5V1luSE9naHRm?=
 =?utf-8?B?QlFsemtpSjNTV0JNOHQ2c2NkdERoQjJ0QmphV3V1Z2RXelI3WjhrVVBNRnJE?=
 =?utf-8?B?TVFuUGRhK3dtTm9Nbzl2Y1BGVndtNWF5aUxFZUhyNzhYbmpMUVg2bmg2alpv?=
 =?utf-8?B?OTJXQUVVdUZFeTN2Y2w5WnZFNFFCeE1KMDNHL2NFSFRIdTVTcjY4c2hPaVFy?=
 =?utf-8?B?VDVnNjc1YVV2VkRBWHdsTXE2TGVoenoyaFVXdkM5THlLYWtYcE5hb3dKWFpP?=
 =?utf-8?B?SmhKc25wNkNyY1JMVC9ZaVR1WndNZmxwZGl3K0luSEJOS0lHR0pmRWFzejVx?=
 =?utf-8?B?QVNwOG01eEQ0WVRVT2hYSmtLTDhON1cvbnk1TFFWNVVnaFo0R203bC9CR01G?=
 =?utf-8?B?OHZCTGs4QlhwSUVpMDlxVUExZHAwWTZBTlhKNDRkTlF6QXNUOXBla1h4dDFn?=
 =?utf-8?B?a0RoRjIxaFl2M0FIU3lFRDdZcVNTMGtaUWFDbFlkMW9GMWVEMXE1N2dCYkdI?=
 =?utf-8?B?Z3E1eXA4NEdSWStTNjJnZVFTV2FsSm9JOWxScm9tSjhNR0FkNnBPN3Z5cVlZ?=
 =?utf-8?B?RjQyRElwa09UU2VxdUtjK3BWUXR6TVVQbnpJdlNJS1c4YnMreE9OazV1YU5m?=
 =?utf-8?B?UnBGdTdUVGJqVWI1OTNJcnhvYTBsREx4Q3I1ckl2b3J5Z3JwaXZvbUZSazRR?=
 =?utf-8?B?eldkUURhWUdiT3IxTXFUUTgxd3A0ajdwWFhCVGE2QjJBQWdZUjF1bnRNWktU?=
 =?utf-8?B?dXVld3N5dUV3OUw1YS9WNGVqZloxVHA1VytiOG9heENtblJ1RUI1ejhKUDMr?=
 =?utf-8?B?REpxN3Y2VG9ROVFaVmFsZkdkTk55a3dUMHhYRnVKNFJtSUhHYnhITlF1aGMw?=
 =?utf-8?B?eVVUOFIvZHUyWFlmNXdpT3VMRS9sRUp3OWs0ajZiN1dIWGJabEZVNTFrTjBP?=
 =?utf-8?B?UFdBUjNzb1RYRUFVNkN3VzYrYUJVdnBQejFZeWNHTy9qNnlUMUpQb3FHTmdw?=
 =?utf-8?B?M29vbjJUeDZzZEU4MGRmejdtZnN0cUZhQ05QZDVRdHpjb0dFMVhVZ0ZBMjBK?=
 =?utf-8?B?YWE3ODZ4RmwvRmkzNG1PRWM4eXZhYVRBY3NxVkxKdXhMZGFkcUtTa3pZaFBs?=
 =?utf-8?B?clhMS3ZFYjFYNkRDbEpsZTdVZms1Y1lvWTljdk1NM2dHSmk1ZDRjYnBTazdM?=
 =?utf-8?B?d2ZSek43VFVRN1pKUTVFV01Kb2JEOHVkbWlQTlZ0SDc4ZWdFR1FGVXRuRm5y?=
 =?utf-8?B?L0xSMjhqTlk1TWNWaEM0U2VRWUJMM1VMZ2JjMmYrMGY2Tk9sY1laMWN2Ynpq?=
 =?utf-8?B?blRJZGRMRURlb0RvWFpGeDYxakQ5L0YvcnZZTXFQNktzeitTcFF3OWkxTlF4?=
 =?utf-8?B?OS9ic0JyRENaTnYwMGprR1QzY0Vaajl3S1lEYjVmUXhUQVhWYTFBYkFibXk0?=
 =?utf-8?B?a1BkTDVoeEJlV2Y5T2ZCc2RxRzRKZktrTHNlNmRYOVV3VnVsaHJaV2I3a2Na?=
 =?utf-8?B?UlZxQThXOVJJZ21neUFJamZqWmtCb2U5YzdtcGRIVnVVVHJyTFAxOHh1NlF6?=
 =?utf-8?B?eEloeUh3TWN5clYrZUQxR0c1SGk5d3FPNExuRHUrSXFtNnd0dVphVEtoZlk4?=
 =?utf-8?B?WjNvOFJrTENLYW1IbXJwaHRqOUNDWlhNNHR1Q0JjY2s3T2cyUHNuT0pQQ2hJ?=
 =?utf-8?B?RmJCWEtQSzhFRXR3cjNNejAwMVIvYkMvUHYwakMzL3BFSXBZK3grSkt5Y3FM?=
 =?utf-8?B?Z3NKWVBIT2xNWHRYVVF6R2RjSXlzV2ZRSTM3T2lUalhHRExyU0V1M1IyajBM?=
 =?utf-8?B?bkZ4VXdHeGZLQXFLNGpXaEJTZFB2MzZYVURzTG1vMUtKQVFJY1VvZy9ubkFx?=
 =?utf-8?B?Tk83SEVpcTBaMWVmdXhiakVrVnVYMTM4eFZEVllhazJra1REZ0JZOEFiN2pJ?=
 =?utf-8?B?WTdLVXJNUHNGN1p1bDFoMDZUZkVZYmgveTROMXFUdWFqTS9HRFc4aytxSGpa?=
 =?utf-8?B?WVduZ1pPNmpwS2crMmV5d2p5dWZQbWxFbHRIcHE2Y1ZwRDFMM3JFSHVndVZz?=
 =?utf-8?B?MGRNRjdPcUxYQnVmRGhPSm9iWXRZTmFPSnNRbkFTcDRleEtTL2hNcUNnSnBp?=
 =?utf-8?B?OXg1cHJESjk2NnpNRE1OUDI1L09wNGo3VGVEeDIrMzh2aXdKRGNGaWowam1W?=
 =?utf-8?B?UmFRWk52NlJlbDE2a1ZMVTNneTU2NHZaMmNXZEw3b0MyZUJWM0VHQUx3d2Nq?=
 =?utf-8?Q?MJtzKOwfZOCVBaL0hyicQDk2w7C23TgurcYB6SXK2yR+y?=
x-ms-exchange-antispam-messagedata-1: F/9A6Qc+3qwnfQ==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: u05lpZ5lRIRQRfglX1USyDwQXrJlf99QU4cpV8nTIQmKKF62RXQby6ePV2oiNuxmp97EovYTJl12MfQsRL0wAQN3VeIJFgMNTzIWwq35QBACJRGaQpPcfCw0Tz92uNCNayz4LIqnz7T6M+/gTEoDyBP+BrFuLSPgt2JMSs9fyBZFxEJJQs2lZaOf7cuymMqQlNszDKGIwe1HtK+9KSzlvHKDH6Kba+yRCwnD6SIxmUHY04HWignX5N3rWx9zh+tv0xGQo2eARaPyMI1aGchEC51lNkimE+FAVaD85Tpjuigt5a64cdsd8ufyadATdD58IbZ5H+j50TRycTVVJodlhg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 5f2d7295-33f6-44d8-94da-08de7f6222b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Mar 2026 11:34:19.8362 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: KiL9IDctyOKjvKlLTQdWMRT8qQyG0arI1xFT3Ftl1u9W5qo8ao8OH0Dk2Na6glugipdaAmQCd5md/jVu1M4HpQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR11MB6529
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
X-Rspamd-Queue-Id: 19A6D262F26
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:dkim,intel.com:email,DS4PPF69154114F.namprd11.prod.outlook.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[mika.kahola@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBLYW5kcGFsLCBTdXJhaiA8c3Vy
YWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgMTEgTWFyY2ggMjAyNiA4
LjAwDQo+IFRvOiBLYW5kcGFsLCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+OyBLYWhv
bGEsIE1pa2EgPG1pa2Eua2Fob2xhQGludGVsLmNvbT47IGludGVsLWdmeEBsaXN0cy5mcmVlZGVz
a3RvcC5vcmc7IGludGVsLQ0KPiB4ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IEthaG9s
YSwgTWlrYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiBTdWJqZWN0OiBSRTogW1BBVENIIHYy
IDE4LzI0XSBkcm0vaTkxNS9sdF9waHk6IEFkZCAuZGlzYWJsZV9jbG9jayBob29rIG9uIERESQ0K
PiANCj4gPiBTdWJqZWN0OiBSRTogW1BBVENIIHYyIDE4LzI0XSBkcm0vaTkxNS9sdF9waHk6IEFk
ZCAuZGlzYWJsZV9jbG9jayBob29rDQo+ID4gb24gRERJDQo+ID4NCj4gPiA+IFN1YmplY3Q6IFtQ
QVRDSCB2MiAxOC8yNF0gZHJtL2k5MTUvbHRfcGh5OiBBZGQgLmRpc2FibGVfY2xvY2sgaG9vaw0K
PiA+ID4gb24gRERJDQo+ID4gPg0KPiA+ID4gRGlzYWJsZSBQTEwgY2xvY2sgb24gRERJIGJ5IG1v
dmluZyBwYXJ0IG9mIHRoZSBQTEwgZGlzYWJsaW5nDQo+ID4gPiBzZXF1ZW5jZSBpbnRvIGEgRERJ
IGNsb2NrIGRpc2FibGluZyBmdW5jdGlvbi4NCj4gPiA+DQo+ID4NCj4gPiBDb21taXQgbWVzc2Fn
ZSBuZWVkcyB0byBiZSBzb21ldGhpbmcgbGlrZSAiQWRkIG5ldyBwbGxfZGlzYWJsZV9jbG9jaw0K
PiA+IGZ1bmN0aW9ucyBzbyB0aGF0IHRoZXkgY2FuIGJlIGhvb2tlZCB1cCB0byBkcGxsLT5kaXNh
YmxlLg0KPiA+IFRoaXMgaXMganVzdCBhIHdyYXBwZXIgb3ZlciB0aGUgZXhpdGlzdGluZyBpbnRl
bF94ZTNwbHBkX3BsbF9kaXNhYmxlDQo+ID4gdG8gbWFrZSBpdCBjb21wYXRpYmxlIFdpdGggZHBs
bC0+ZGlzYWJsZSBmdW5jdGlvbiINCj4gPg0KPiA+DQo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KPiA+ID4gLS0tDQo+ID4gPiAgZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYyAgICAgIHwgIDIgKy0NCj4gPiA+ICBk
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMgfCAxMiArKysrKysr
KysrKysNCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5j
ICAgfCAxMSArKysrKysrKysrKw0KPiA+ID4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfbHRfcGh5LmggICB8ICAxICsNCj4gPiA+ICA0IGZpbGVzIGNoYW5nZWQsIDI1IGluc2Vy
dGlvbnMoKyksIDEgZGVsZXRpb24oLSkNCj4gPiA+DQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGkuYw0KPiA+ID4gYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaS5jDQo+ID4gPiBpbmRleCA1MTQwM2QwOWM0NzcuLjE5
MWFlN2NmODFmYiAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfZGRpLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGRpLmMNCj4gPiA+IEBAIC01Mjk5LDcgKzUyOTksNyBAQCB2b2lkIGludGVsX2RkaV9p
bml0KHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4gPiAqZGlzcGxheSwNCj4gPiA+DQo+ID4gPiAg
CWlmIChIQVNfTFRfUEhZKGRpc3BsYXkpKSB7DQo+ID4gPiAgCQllbmNvZGVyLT5lbmFibGVfY2xv
Y2sgPSBpbnRlbF94ZTNwbHBkX3BsbF9lbmFibGVfY2xvY2s7DQo+ID4gPiAtCQllbmNvZGVyLT5k
aXNhYmxlX2Nsb2NrID0gaW50ZWxfeGUzcGxwZF9wbGxfZGlzYWJsZTsNCj4gPiA+ICsJCWVuY29k
ZXItPmRpc2FibGVfY2xvY2sgPSBpbnRlbF94ZTNwbHBkX3BsbF9kaXNhYmxlX2Nsb2NrOw0KPiA+
ID4gIAkJZW5jb2Rlci0+cG9ydF9wbGxfdHlwZSA9IGludGVsX210bF9wb3J0X3BsbF90eXBlOw0K
PiA+ID4gIAkJZW5jb2Rlci0+Z2V0X2NvbmZpZyA9IHhlM3BscGRfZGRpX2dldF9jb25maWc7DQo+
ID4gPiAgCX0gZWxzZSBpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMTQpIHsgZGlmZiAtLWdp
dA0KPiA+ID4gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwbGxfbWdyLmMN
Cj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+
ID4gPiBpbmRleCA1NGM3YTI1NWIzYTUuLjI4YzU2MDQxNzQwOSAxMDA2NDQNCj4gPiA+IC0tLSBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBsbF9tZ3IuYw0KPiA+ID4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcGxsX21nci5jDQo+ID4gPiBA
QCAtNDYwNyw4ICs0NjA3LDIwIEBAIHN0YXRpYyB2b2lkIHhlM3BscGRfcGxsX2VuYWJsZShzdHJ1
Y3QNCj4gPiA+IGludGVsX2Rpc3BsYXkgKmRpc3BsYXksDQo+ID4gPiAgCWludGVsX3hlM3BscGRf
cGxsX2VuYWJsZShlbmNvZGVyLCBwbGwsIGRwbGxfaHdfc3RhdGUpOyAgfQ0KPiA+ID4NCj4gPiA+
ICtzdGF0aWMgdm9pZCB4ZTNwbHBkX3BsbF9kaXNhYmxlKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpk
aXNwbGF5LA0KPiA+ID4gKwkJCQlzdHJ1Y3QgaW50ZWxfZHBsbCAqcGxsKQ0KPiA+ID4gK3sNCj4g
PiA+ICsJc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIgPSBnZXRfaW50ZWxfZW5jb2Rlcihk
aXNwbGF5LCBwbGwpOw0KPiA+ID4gKw0KPiA+ID4gKwlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+
ZHJtLCAhZW5jb2RlcikpDQo+ID4gPiArCQlyZXR1cm47DQo+ID4gPiArDQo+ID4gPiArCWludGVs
X3hlM3BscGRfcGxsX2Rpc2FibGUoZW5jb2Rlcik7DQo+ID4gPiArfQ0KPiA+ID4gKw0KPiA+ID4g
IHN0YXRpYyBjb25zdCBzdHJ1Y3QgaW50ZWxfZHBsbF9mdW5jcyB4ZTNwbHBkX3BsbF9mdW5jcyA9
IHsNCj4gPiA+ICAJLmVuYWJsZSA9IHhlM3BscGRfcGxsX2VuYWJsZSwNCj4gPiA+ICsJLmRpc2Fi
bGUgPSB4ZTNwbHBkX3BsbF9kaXNhYmxlLA0KPiA+ID4gIAkuZ2V0X2h3X3N0YXRlID0geGUzcGxw
ZF9wbGxfZ2V0X2h3X3N0YXRlLA0KPiA+ID4gIAkuZ2V0X2ZyZXEgPSB4ZTNwbHBkX3BsbF9nZXRf
ZnJlcSwNCj4gPiA+ICB9Ow0KPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9sdF9waHkuYw0KPiA+ID4gaW5kZXggNmJjMzJkMTczNGE3Li4zMjMwZDJlMjhk
OWMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2x0X3BoeS5jDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2x0X3BoeS5jDQo+ID4gPiBAQCAtMjMwOSw2ICsyMzA5LDE3IEBAIHZvaWQgaW50ZWxfeGUzcGxw
ZF9wbGxfZGlzYWJsZShzdHJ1Y3QNCj4gPiA+IGludGVsX2VuY29kZXIgKmVuY29kZXIpDQo+ID4g
PiAgCQlpbnRlbF9tdGxfdGJ0X3BsbF9kaXNhYmxlX2Nsb2NrKGVuY29kZXIpOw0KPiA+ID4gIAll
bHNlDQo+ID4gPiAgCQlpbnRlbF9sdF9waHlfcGxsX2Rpc2FibGUoZW5jb2Rlcik7DQo+ID4gPiAr
fQ0KPiA+ID4gKw0KPiA+ID4gK3ZvaWQgaW50ZWxfeGUzcGxwZF9wbGxfZGlzYWJsZV9jbG9jayhz
dHJ1Y3QgaW50ZWxfZW5jb2RlciAqZW5jb2Rlcikgew0KPiA+ID4gKwlzdHJ1Y3QgaW50ZWxfZGln
aXRhbF9wb3J0ICpkaWdfcG9ydCA9IGVuY190b19kaWdfcG9ydChlbmNvZGVyKTsNCj4gPiA+ICsN
Cj4gPiA+ICsJaWYgKGludGVsX3RjX3BvcnRfaW5fdGJ0X2FsdF9tb2RlKGRpZ19wb3J0KSkNCj4g
PiA+ICsJCWludGVsX210bF90YnRfcGxsX2Rpc2FibGVfY2xvY2soZW5jb2Rlcik7DQo+ID4NCj4g
PiBUaGlzIGlzIGFscmVhZHkgY2FsbGVkIGluc2lkZSBpbnRlbF9tdGxfdGJ0X3BsbF9kaXNhYmxl
IGNsb2NrLg0KPiA+IElzIHRoZXJlIGFueSBzcGVjaWZpYyByZWFzb24gdG8gYWRkIGEgd3JhcHBl
ciBhcm91bmQgdGhpcyBvdGhlciB0aGFuDQo+ID4gbmFtaW5nIGlmIG5vdCBZb3UgY2FuIGRyb3Ag
dGhpcyB3cmFwcGVyIGFuZCBwcm9jZWVkIHdpdGhvdXQgdGhlIGJlbG93IGNoYW5nZQ0KPiA+IC0J
CWVuY29kZXItPmRpc2FibGVfY2xvY2sgPSBpbnRlbF94ZTNwbHBkX3BsbF9kaXNhYmxlOw0KPiA+
ICsJCWVuY29kZXItPmRpc2FibGVfY2xvY2sgPSBpbnRlbF94ZTNwbHBkX3BsbF9kaXNhYmxlX2Ns
b2NrOw0KDQpUaGlzIHdhcyBqdXN0IGEgbmFtaW5nIHRvIGhhdmUgVEJUIG1vZGUgYXMgYSBzZXBh
cmF0ZSBhcyBpdCdzIFBMTCBoYW5kbGluZyBpcyBkaWZmZXJlbnQuDQoNCkkgY2FuIGRyb3AgdGhp
cyBmb3IgdGhlIG5leHQgcmV2aXNpb24uDQoNCj4gPg0KPiA+IFJlZ2FyZHMsDQo+ID4gU3VyYWog
S2FuZHBhbA0KPiA+DQo+ID4gPiArCWVsc2UNCj4gPiA+ICsJCS8qIFRPRE86IHJlbW92ZSB3aGVu
IFBMTCBtZ3IgaXMgaW4gcGxhY2UuICovDQo+ID4gPiArCQlpbnRlbF94ZTNwbHBkX3BsbF9kaXNh
YmxlKGVuY29kZXIpOw0KPiA+ID4NCj4gPiA+ICB9DQo+ID4gPg0KPiA+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfbHRfcGh5LmgNCj4gPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9sdF9waHkuaA0KPiA+ID4gaW5kZXggOTE4
OGNlOTgwMTE5Li4zODM4ZTkzMjY3NzMgMTAwNjQ0DQo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5oDQo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2x0X3BoeS5oDQo+ID4gPiBAQCAtNDksNSArNDksNiBAQCB2
b2lkIGludGVsX3hlM3BscGRfcGxsX2Rpc2FibGUoc3RydWN0DQo+ID4gPiBpbnRlbF9lbmNvZGVy
ICplbmNvZGVyKTsgIHZvaWQgaW50ZWxfbHRfcGh5X3ZlcmlmeV9wbGxzKHN0cnVjdA0KPiA+ID4g
aW50ZWxfZGlzcGxheSAqZGlzcGxheSk7ICB2b2lkIGludGVsX3hlM3BscGRfcGxsX2VuYWJsZV9j
bG9jayhzdHJ1Y3QNCj4gPiA+IGludGVsX2VuY29kZXINCj4gPiAqZW5jb2RlciwNCj4gPiA+ICAJ
CQkJICAgIGNvbnN0IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlKTsNCj4gPiA+
ICt2b2lkIGludGVsX3hlM3BscGRfcGxsX2Rpc2FibGVfY2xvY2soc3RydWN0IGludGVsX2VuY29k
ZXINCj4gPiA+ICsqZW5jb2Rlcik7DQo+IA0KPiBBbHNvIHJlYXJyYW5nZSBpbiBBU0NJSUJFVElD
QUwgb3JkZXINCg0KWWVzIQ0KDQpUaGFua3MgZm9yIHRoZSByZXZpZXchDQoNCi1NaWthLQ0KDQo+
IA0KPiBSZWdhcmRzLA0KPiBTdXJhaiBLYW5kcGFsDQo+IA0KPiA+ID4NCj4gPiA+ICAjZW5kaWYg
LyogX19JTlRFTF9MVF9QSFlfSF9fICovDQo+ID4gPiAtLQ0KPiA+ID4gMi40My4wDQoNCg==
