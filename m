Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C26BA80492
	for <lists+intel-gfx@lfdr.de>; Tue,  8 Apr 2025 14:10:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E4C910E67A;
	Tue,  8 Apr 2025 12:10:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FXRBCiFh";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A10A110E142;
 Tue,  8 Apr 2025 12:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744114205; x=1775650205;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=Yye+uI3LlMY+Xq6F/Dye7g5qhStT7myCSUnd4tI68rI=;
 b=FXRBCiFhbl+PiTcSYtijxtk1sbFwjzGIKJ+pJaomqdq7KdU8bwx7t6RU
 urcJGoq7LF9+PTa4TEKOhnkVwl43Vv7iwwS9GWqj3rE4WDgaPgCPV8OoZ
 EGxUT+zZYxU4oeUFsztUn3hQUeQ4LIc9MNgpWL+KZhoIILs1kwZTxy5Rs
 x2eGRlkGNjtt+ooU+RY1o0SheFZCgQvuN7cLkzxKeZ2sEjC14Oqxn4XYn
 uWgAcIbv5hbGDk6Ku3U1ZTM4C8YYCEQdf/ejyTRzdOTMuuuPK2hnC3kIb
 rnhY+uoFysPopRE84mQjpjYc702BV4cBzbOHVsY1mvKZVnrEWcIhxSpDX A==;
X-CSE-ConnectionGUID: SrwPUC86TVaVDXN2PVJvkg==
X-CSE-MsgGUID: 2FmB/lURTumGzM6vDvcjmA==
X-IronPort-AV: E=McAfee;i="6700,10204,11397"; a="56180926"
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="56180926"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:10:04 -0700
X-CSE-ConnectionGUID: g63NEWhHT82YbKMwvl9Usw==
X-CSE-MsgGUID: p6rY6f/+TWGsGHmDl42boQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,198,1739865600"; d="scan'208";a="129107536"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2025 05:10:04 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Tue, 8 Apr 2025 05:10:03 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Tue, 8 Apr 2025 05:10:03 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Tue, 8 Apr 2025 05:10:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=F/s9fUp1LbS/GADyAb6TCNbe3rqHLXRiZ5J6d7wiamPbjrqwBb9ulBbTtOO5S64VWYv14G8F4HYpIUWS+yqggGABJh7BUJkDzw+KK9UvJhTj2GzBXzrXBjw39yF1iEAN+cIpiBOX6wtG/cLhM9N9Js8h29Aj9t8nIGPAj2bx+c2ttAGcKA7VFafSY8bpBg2VXZEkioF+VsKtu0f3Fp4Vciw0p0z6tONsG1udNg4lEdmrIKpC+MIvB8TesoAIg+pFn4PzV5fI7ugF3C0ulHGPKHi+bqesHDR29foVorf2JZPRJtJsrs7HzMCK3JLRo1SBUN/lFV2+FZPJcx4uotRVZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Yye+uI3LlMY+Xq6F/Dye7g5qhStT7myCSUnd4tI68rI=;
 b=qS6szJZpF76QjPgr2UieAjPnDvJtgAj52UvyA6MaUkzhMZr8/Uys2FVNZcz52KNqPyLF55nG7NQXwhcHYW1xdlhqBQWX7LobCRfHPelBdZebAhdMbxGZ/+MlQroDSk0Qc7jH5N6lXQ7broCXtQ3boo/02eLuRxI23Swc/8/c64tz0Dsr+VLQA+u+lbN0zJ/1ZFuU7GH331DogwaceZS6fY3VK+C5QxDhqLDk+ZgcL6B7jFT4JWVE7f3bns6WyE2w8JqnIXIIm4qO/CsvEdrGdwPhyHOTLDKuXp7QiqZ5953Wyxj91l49nVGAOI7kP5fdYpfAaAwi38y1DoeHpJZFvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by DM4PR11MB6429.namprd11.prod.outlook.com (2603:10b6:8:b5::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8632.21; Tue, 8 Apr
 2025 12:10:00 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%5]) with mapi id 15.20.8583.045; Tue, 8 Apr 2025
 12:10:00 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "Hogander, Jouni" <jouni.hogander@intel.com>
Subject: RE: [PATCH v2 08/11] drm/i915/psr: Add interface to notify PSR of
 vblank enable/disable
Thread-Topic: [PATCH v2 08/11] drm/i915/psr: Add interface to notify PSR of
 vblank enable/disable
Thread-Index: AQHblxVY6UJZa7uNpESJ83X1/Xq/lrOZ0Apg
Date: Tue, 8 Apr 2025 12:10:00 +0000
Message-ID: <MW4PR11MB70543C4D63B715A4247BF9F3EFB52@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20250317081905.3683654-1-jouni.hogander@intel.com>
 <20250317081905.3683654-9-jouni.hogander@intel.com>
In-Reply-To: <20250317081905.3683654-9-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|DM4PR11MB6429:EE_
x-ms-office365-filtering-correlation-id: 1ece307e-7149-4943-39e4-08dd7696496b
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?U2E2TEh6Tnp5OVZuOGFUMGpjSmEzMENXdXdiWmJkVjZmb3ppZDdFZkFTNkNx?=
 =?utf-8?B?cGRJTHRaOWdBdEpzN1E4Tk11OUo3TzAyZlFzS1B1S1MzUFBTdmFReXcyaUxk?=
 =?utf-8?B?SDRtVy9VMU5hdGxKdnJjaGp1Rk1iVFFPYXJCVCs3SEpvMnJCRFRxdHF0cEZk?=
 =?utf-8?B?RTV0OWYyRjQ3b3RqYTNCNmxSTytVdHRmbkc2cG1BMk03NG5VUjZGdndtNlpD?=
 =?utf-8?B?NG5sbS96WTlMNm01bmJkUkF5MWc5c25CQXQ1Nk5uMVd5ZmZtR3dLUmtzZmJY?=
 =?utf-8?B?RGo4QWtKOUtLL21JSWVwTkNQL3hNNXJ1TS9aQWcwWVJodGlIS0FhaVpnU210?=
 =?utf-8?B?Um5jUGExSGJmT2JjVzhqR2JLbmdsYUF2TkxjNlUwTnNhdUVpWHFEMFFFSksx?=
 =?utf-8?B?blRqK1NLSVVjeHg5Wm5ab1dwNmttd2Y0Q3ZFOWQra1Y3ekxTZjBYbjZaLzdw?=
 =?utf-8?B?Si81YzlkUFBDSFJ2dmlwZngzNGp4TkhPaHc1OFpHMlhTSDlMNEZlbXMwRExP?=
 =?utf-8?B?T1QvUndvTE12ejFwRURuVzZkUjQyb0l6ZGY0azgwdEFlZlI3ekprcXZWaFA4?=
 =?utf-8?B?UTJDQW5KSmptc3FBNHVKd25sbVppT2Ezbmx5WGFLTTNJd2JnTlFqTk1KalNt?=
 =?utf-8?B?b0l2WlkzNDUzaE0xZkRWVTdVZ29vYldDQVU4VVBNaG5ERG9QWXpSdG5VU2tr?=
 =?utf-8?B?REllY0FnZXEySWVLSG95VVZwTG5ySjRWZmVwMndsRVRZWUxaRlRzbXJMZjNN?=
 =?utf-8?B?dVArZjVwbWxkYkpIK3pUTnBYczJXdm05enhENDBWZ3F2elkyQmZRai9nRkJk?=
 =?utf-8?B?UU9ac2FIdXp0cm5oK2kwcmNXcXR2SnNManVhSkZMMHpKVkVCSzVqUjFZM1pX?=
 =?utf-8?B?QU80YjVlQXhmNXkrV1RsalZ4ZmV0U2RweVhRTWRoTjl5dnJnVm1jcVlVRXlY?=
 =?utf-8?B?L0dCWUpTMlFoZzdyRFN6MWw2ampjeURucGpUbHg0T0VOb2NOZ2JSemsvK2Rv?=
 =?utf-8?B?WVdja29lWGtpRmkweWcybndFampuRXVxYm41a2FiTENzT3RBemFZa3dDNzJl?=
 =?utf-8?B?dmdETGp6aUFsV3ZVdFFHSjRlYnR5SjlTQW5nU2dESXlzNmZyTzFCYzd2dGs0?=
 =?utf-8?B?NmQ3MWFDRW5yeXhnTFlhTVFNU0VDZWtucXBtZGJUa2hKVXRvZnVRSHBWM3Z0?=
 =?utf-8?B?VDcvZVhudUdXR3hESXRnWW9XdnNvcjArQ0RXbGU0c015czN6TGUwaTQ2Wmpq?=
 =?utf-8?B?NkkwSVVTcy9WN2xscnhEZ1dhbFRjSmxnY0lWTy9RYWJqSXkvaU5TN2dHblNC?=
 =?utf-8?B?MXM3T3FIQkI2bWFlcERRMXFFTUltMmtVY3d6YVQxeWF5dnVCWC93K09lSDVX?=
 =?utf-8?B?Y2tHbnNEblBBelN1M3RmUGNiVFVSeWVXRExCUGROS1VVaWljdUZTQjR1c3Zp?=
 =?utf-8?B?cTdzVVpLTWZmVjk5aW5zSXZob0hJRjRCMkZ3WWFvb0NYMUpqRHFyTjVjMHE1?=
 =?utf-8?B?ejRUQXJTeE9qcE5rd21nYWFIdW9uYTd0cXBEMGJmb1BzemRPMllzd2g4QTRU?=
 =?utf-8?B?M2dwYXhHM05mYlZZNzJzM08wdDJFc2dvMklFUzVSSi9CZ2RVQ2cwaVptYjhX?=
 =?utf-8?B?Q3ljN2QvTVJTWTZURlFoaEpnOS9XbnJ4dXJySVdQNVR3MWRWdWZaM25MSjJD?=
 =?utf-8?B?VHdaK2lLaE04T0JBK3FMNEg5Zm12Y092NCtTWXFPZUd0TVh1TGpzRnJQZ2JR?=
 =?utf-8?B?VUVzL3BLbVRpOWoyV29oS3krZHpXb3ZzeTdlQSt3WVNldHFaaWk5NFBBQ05L?=
 =?utf-8?B?b1BOV0pUZmZ6bDhNQ2xkRlpMb2RzNWxOZTVUejBodFlsMlZIbU9WTmxOVnJy?=
 =?utf-8?B?RVlzejd6Ly9yV1ZBRjNIT0lVVWtJQnlwTkdXdytLVE41UFM3MHVpZnVxR1hD?=
 =?utf-8?Q?THfeLGRVw4YfVttJZk2af1Ba2RFXv2k6?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MGk1bHMySlMvb1l0eHVZemZHV2NWY2xSZGdYeXVMamdadG1mQmR5ZmZZdnZF?=
 =?utf-8?B?K3U1eG8yQmNaN3QyTkE3c1V6RS9ReXZraitCbW5DdU1haHFkTTBFeUtnUmhn?=
 =?utf-8?B?Zi93YTVRc2x3WExlUnByMDFVN25ldlErZUtJS1d2Q0RES3FWNDAzaXgrV2Nx?=
 =?utf-8?B?bUVHYVdjbE5BMVlOeVl3OHFmbHVIQXdPNzA1OFVGNmJTUS9DNzJZMjV6TGJt?=
 =?utf-8?B?aExUV2lSb0JLUEtBc1R0bnFIc2lsb2R4WHo1VkVFVFRRcTY0OXRLUXpKaTNk?=
 =?utf-8?B?Z28vNDE1VGF3VUQ0RldCMjdQZytzZkFjSmc3UVo4UDM4eWF4ZlVQNjN2RGMx?=
 =?utf-8?B?a3cyQkRuOUhWVmpZQWg2VkNzem1WQUZhTmxTYTkzR1k2bCtYQi95Umtxa1ZD?=
 =?utf-8?B?UnY0OWRmeTdYQXZNa0hJV0VKV1N5VUg0cVhHOHoyclFGc3hieWErSE9CeW1Z?=
 =?utf-8?B?bnVGZ2diYTRnSjE3SnpCcWEvMFNYR2ZocUNRdEVMTVViQXlmSk1SQ2xBZERN?=
 =?utf-8?B?UWRmQ0FHTXBxUTBsbWtQM3JHODdQWnJRMzVQSjM0RHdSWFNneVd6YmJkeG5L?=
 =?utf-8?B?ZnFoQjRkM0tFdVdhdHBvRHhPU0N1Ry9GdVhDak9Sb282YjVtb0JYbG5IL05u?=
 =?utf-8?B?K09tV2J1U1p3L29PbVNIamVkVHhkZjh2TCt3dFhUTVdhNTlVbGJkNUkyekx0?=
 =?utf-8?B?M2J0WHRrYWMybzNJNVpudXVpNm1oUW5RaTRSYkZydko1U2phZjl6THZZNWlt?=
 =?utf-8?B?aS95OTNueUVWN0xsNE1lUUd5SENNa0hZVWY3OGJPakNwNkRKKzBDU3c4TE1x?=
 =?utf-8?B?VXJDWGg2OGF2MStMc3Ayd1d1YWc5K1Y3cFJxQVYwdmlBeFVTM2lSWm9RbGdo?=
 =?utf-8?B?NHE2bWdRd3Y3OE5zbG9ldUxjcWxlT0F6cUp1aE5xM1RRUGd5K09nb2Z5NW5w?=
 =?utf-8?B?bzBjTjhDcGtoRGlFTFc4UnpQZy9jbXR2bjRnWjhhM2pvQytBRzB5QVBuMzl0?=
 =?utf-8?B?UnVXNkpVMGZETFFrQURTc2hKOHdIWVhIeHlsZ0ZROEF3TVlzbGQyaUg4TGpz?=
 =?utf-8?B?SDZXNE9PRlE1T3I2eWgvb0pWbUhPY1VkR21HZGNGOGVuRkFsTm1VTjNmaUhs?=
 =?utf-8?B?RGg0SWxXM0FEZVhqbDhNb2pkcWFLc0wxa3BMaVFPU1FpWWo2RnVqRHQxNnA2?=
 =?utf-8?B?RWZqRDFzUCtiQ1c2TWxyQjJTT3Q3OHpKVEVIclhZWVdSaWtTajd1ZTErZlIz?=
 =?utf-8?B?Z3k4cnZNOVJaNm0xZkVZY0QzSGZwN0VYMnZDM1B3M2hnb2grTnNLR2VkRnpW?=
 =?utf-8?B?ZDhWTlhRRXZPT0QzTitPaWowR2RsSlpFeFgrVmZ5UWk3eTkyQnVlM29MTERv?=
 =?utf-8?B?MGs0VmE5SE01bm54VGp5ZTVUZEdFTjNwUDF4VXFOVU12eWtCN3pWVlB3ZGh6?=
 =?utf-8?B?V1M3Nm1iSGNqVld4RlJKQkkxb205TldiTGhJeUZSbWY0RnRRcThWWXVVbmdm?=
 =?utf-8?B?WDNwSFQ2NVYreXpzRGV1bW5UTTYzNUxsNjFvTVBRT2ZJSFZNTC9vN1h5UkYw?=
 =?utf-8?B?VUIwcU4raldaZ0ZZUUJ1MTNuMXhLUitvbUhrbnl6TExnaURDWVJPd3lhU1Qr?=
 =?utf-8?B?d0pucmJjK3RFQnovM0dRYTZXMzBNZ1FQcVFEYy83MVREQkdqNkdNZCt6RmZo?=
 =?utf-8?B?Y3Y5L1l5cGFvbmVXd3d0Z0FYd2FzQU1wMkxEUlFyYy9zcndKYmRKemZML0dV?=
 =?utf-8?B?MU5iM2lHOTB6bzIvRWNZTEtQMkdXaFJEcDFVSHZYdnF1UnR3UXc5ODF1bVpK?=
 =?utf-8?B?L3RZb0Jmekd6VkFQWFdJVjl4dnloQkp0b0pqdzlFUDA5bkdya1p4cWgrVVpE?=
 =?utf-8?B?a1pyQXNVRnp6OGFwYU5FK2RNcDNjcU9OWFExRnluTSsrdEoyVEVDeUt5bHpo?=
 =?utf-8?B?VElIbzI3c2hPek9nZkJyaVN1aStKMDB0SXdXTXVDS3RSYzVxSjlIeVhLcGI2?=
 =?utf-8?B?UXI0TTNOY05WdGg3WVJnYnFnVTVxN1IvVmxEclYvcnZ5OXZ4MkRaWHhWMnNS?=
 =?utf-8?B?Mmp3SU5xajNJb2dCSnUzUlN2eUxCa1IzbUJSZFdSeHIrZzRRSjhsbW1oaEZP?=
 =?utf-8?Q?akDPE0AxnhejkSU4tVRV1a2Th?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1ece307e-7149-4943-39e4-08dd7696496b
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2025 12:10:00.5168 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DJDshHnkGkdXeyd98KriUXHebG10rtLJ59iuOAR3m+79h2Jpj54Jh0YGnSjJcfLxlqvA1x8bT2RLbfceDwPgkw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6429
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC14ZSA8aW50ZWwteGUt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKb3VuaQ0KPiBIw7Zn
YW5kZXINCj4gU2VudDogTW9uZGF5LCAxNyBNYXJjaCAyMDI1IDEwLjE5DQo+IFRvOiBpbnRlbC1n
ZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcN
Cj4gQ2M6IEhvZ2FuZGVyLCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMDgvMTFdIGRybS9pOTE1L3BzcjogQWRkIGludGVyZmFjZSB0byBub3Rp
ZnkgUFNSIG9mIHZibGFuaw0KPiBlbmFibGUvZGlzYWJsZQ0KPiANCj4gVG8gaW1wbGVtZW50IFdh
XzE2MDI1NTk2NjQ3IHdlIG5lZWQgdG8gZ2V0IG5vdGlmaWNhdGlvbiBvZiB2YmxhbmsgaW50ZXJy
dXB0DQo+IGVuYWJsZS9kaXNhYmxlLiBBZGQgbmV3IGludGVyZmFjZSB0byBQU1IgY29kZSBmb3Ig
dGhpcyBub3RpZmljYXRpb24uDQo+IA0KDQpSZXZpZXdlZC1ieTogTWlrYSBLYWhvbGEgPG1pa2Eu
a2Fob2xhQGludGVsLmNvbT4NCg0KPiBTaWduZWQtb2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpv
dW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9k
aXNwbGF5L2ludGVsX3Bzci5jIHwgNDAgKysrKysrKysrKysrKysrKysrKysrKysrDQo+IGRyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmggfCAgMiArKw0KPiAgMiBmaWxlcyBj
aGFuZ2VkLCA0MiBpbnNlcnRpb25zKCspDQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfcHNyLmMNCj4gaW5kZXggYmFmNmE3MTEwYTU1NS4uYWZiOWZhZWQ3Nzg0YiAx
MDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0K
PiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+IEBAIC0z
ODIwLDYgKzM4MjAsNDYgQEAgdm9pZCBpbnRlbF9wc3Jfbm90aWZ5X3BpcGVfY2hhbmdlKHN0cnVj
dA0KPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLA0KPiAgCX0NCj4gIH0NCj4gDQo+ICsvKioN
Cj4gKyAqIGludGVsX3Bzcl9ub3RpZnlfdmJsYW5rX2VuYWJsZV9kaXNhYmxlIC0gTm90aWZ5IFBT
UiBhYm91dA0KPiArZW5hYmxlL2Rpc2FibGUgb2YgdmJsYW5rDQo+ICsgKiBAZGlzcGxheTogaW50
ZWwgZGlzcGxheSBzdHJ1Y3QNCj4gKyAqIEBlbmFibGU6IGVuYWJsZS9kaXNhYmxlDQo+ICsgKg0K
PiArICogVGhpcyBpcyB0YXJnZXRlZCBmb3IgdW5kZXJydW4gb24gaWRsZSBQU1IgSFcgYnVnIChX
YV8xNjAyNTU5NjY0NykgdG8NCj4gK2FwcGx5DQo+ICsgKiByZW1vdmUgdGhlIHdvcmthcm91bmQg
d2hlbiB2YmxhbmsgaXMgZ2V0dGluZyBlbmFibGVkL2Rpc2FibGVkICAqLw0KPiArdm9pZCBpbnRl
bF9wc3Jfbm90aWZ5X3ZibGFua19lbmFibGVfZGlzYWJsZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSwNCj4gKwkJCQkJICAgIGJvb2wgZW5hYmxlKQ0KPiArew0KPiArCXN0cnVjdCBpbnRl
bF9lbmNvZGVyICplbmNvZGVyOw0KPiArDQo+ICsJZm9yX2VhY2hfaW50ZWxfZW5jb2Rlcl93aXRo
X3BzcihkaXNwbGF5LT5kcm0sIGVuY29kZXIpIHsNCj4gKwkJc3RydWN0IGludGVsX2RwICppbnRl
bF9kcCA9IGVuY190b19pbnRlbF9kcChlbmNvZGVyKTsNCj4gKw0KPiArCQltdXRleF9sb2NrKCZp
bnRlbF9kcC0+cHNyLmxvY2spOw0KPiArCQlpZiAoaW50ZWxfZHAtPnBzci5wYW5lbF9yZXBsYXlf
ZW5hYmxlZCkgew0KPiArCQkJbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiAr
CQkJYnJlYWs7DQo+ICsJCX0NCj4gKw0KPiArCQlpZiAoaW50ZWxfZHAtPnBzci5lbmFibGVkKQ0K
PiArDQo+IAlpbnRlbF9wc3JfYXBwbHlfdW5kZXJydW5fb25faWRsZV93YV9sb2NrZWQoaW50ZWxf
ZHApOw0KPiArDQo+ICsJCW11dGV4X3VubG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gKwkJ
cmV0dXJuOw0KPiArCX0NCj4gKw0KPiArCS8qDQo+ICsJICogTk9URTogaW50ZWxfZGlzcGxheV9w
b3dlcl9zZXRfdGFyZ2V0X2RjX3N0YXRlIGlzIHVzZWQNCj4gKwkgKiBvbmx5IGJ5IFBTUiAqIGNv
ZGUgZm9yIERDM0NPIGhhbmRsaW5nLiBEQzNDTyB0YXJnZXQNCj4gKwkgKiBzdGF0ZSBpcyBjdXJy
ZW50bHkgZGlzYWJsZWQgaW4gKiBQU1IgY29kZS4gSWYgREMzQ08NCj4gKwkgKiBpcyB0YWtlbiBp
bnRvIHVzZSB3ZSBuZWVkIHRha2UgdGhhdCBpbnRvIGFjY291bnQgaGVyZQ0KPiArCSAqIGFzIHdl
bGwuDQo+ICsJICovDQo+ICsJaW50ZWxfZGlzcGxheV9wb3dlcl9zZXRfdGFyZ2V0X2RjX3N0YXRl
KGRpc3BsYXksIGVuYWJsZSA/DQo+IERDX1NUQVRFX0RJU0FCTEUgOg0KPiArCQkJCQkJRENfU1RB
VEVfRU5fVVBUT19EQzYpOw0KPiArfQ0KPiArDQo+ICBzdGF0aWMgdm9pZA0KPiAgcHNyX3NvdXJj
ZV9zdGF0dXMoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgc3RydWN0IHNlcV9maWxlICptKSAg
eyBkaWZmIC0tZ2l0DQo+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3Iu
aA0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gaW5kZXgg
YmZlMzY4MjM5YmMyNy4uYTkxNGI3ZWUzNzU2YSAxMDA2NDQNCj4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3Bzci5oDQo+IEBAIC02NCw2ICs2NCw4IEBAIHZvaWQgaW50ZWxfcHNy
X25vdGlmeV9waXBlX2NoYW5nZShzdHJ1Y3QNCj4gaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwN
Cj4gIAkJCQkgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjLCBib29sIGVuYWJsZSk7ICB2b2lkDQo+
IGludGVsX3Bzcl9ub3RpZnlfZGM1X2RjNihzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSk7
ICB2b2lkDQo+IGludGVsX3Bzcl9kYzVfZGM2X3dhX2luaXQoc3RydWN0IGludGVsX2Rpc3BsYXkg
KmRpc3BsYXkpOw0KPiArdm9pZCBpbnRlbF9wc3Jfbm90aWZ5X3ZibGFua19lbmFibGVfZGlzYWJs
ZShzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gKwkJCQkJICAgIGJvb2wgZW5hYmxl
KTsNCj4gIGJvb2wgaW50ZWxfcHNyX2xpbmtfb2soc3RydWN0IGludGVsX2RwICppbnRlbF9kcCk7
DQo+IA0KPiAgdm9pZCBpbnRlbF9wc3JfbG9jayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0
ZSAqY3J0Y19zdGF0ZSk7DQo+IC0tDQo+IDIuNDMuMA0KDQo=
