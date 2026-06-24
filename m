Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id A3nEC+LTO2o2dwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 14:56:02 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C49E6BE4D8
	for <lists+intel-gfx@lfdr.de>; Wed, 24 Jun 2026 14:56:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=TVbVv409;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3054410EEF9;
	Wed, 24 Jun 2026 12:55:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6620810E071;
 Wed, 24 Jun 2026 12:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782305758; x=1813841758;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=Pbjqto8d6tiRU9oqbGanxqpDOPZ/wTzCU7Wfq0xwiBU=;
 b=TVbVv409VU41jmKg5rrFOQvsI9wzvBqaUbH7OHwnww63gVelxuGiaGmW
 iZBY0bOvEofO9xAmvNHEXhWi1Czqx9L3cMToE4lOKyL26nthI+wyJdA+m
 VmDV0kpeIDaZP1uVt3NjLbI18w0T6yuitxzLxUPHuC1Lflxi5N6guQH7I
 NfTxw9UfUVAiwFjmS+fuhfnkh8ZnQtIi/epqautnvREboh7dfr+Rp/NcI
 j2s3Fx9ClydiJ8yCFP9YZUggnoiDyfTDkb33rclRCieSZOGwwLSuQE3zQ
 hRu/9QqWfAv6x+Z03p91bSoEQ2Vh/uJ89bdWWhKV1Rb5jE+sCX0UpAqfl Q==;
X-CSE-ConnectionGUID: Kuzuwx1KQaC0OdUR4cGCYQ==
X-CSE-MsgGUID: 6qtJcXFQQAqtaM4pYgjxmA==
X-IronPort-AV: E=McAfee;i="6800,10657,11826"; a="105858094"
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="105858094"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:55:57 -0700
X-CSE-ConnectionGUID: ZshzLU0vTiGsZ8QFRxg62w==
X-CSE-MsgGUID: kD/GlyqyTryLouaL7+rXxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,222,1774335600"; d="scan'208";a="249677427"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa008.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2026 05:55:57 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:55:56 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 24 Jun 2026 05:55:56 -0700
Received: from BL2PR02CU003.outbound.protection.outlook.com (52.101.52.23) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 24 Jun 2026 05:55:55 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=PM7KAKL32bueGUvh0VihhRJ11mKP5QJ4LhuOLUAW8+HZBv0fV8CGbSNTfAH8kRan/OTwOq6GTtTe0NW+Zb+IZAlkhxmk6Zm+b8IPJw5vBwvBbMjNXiKjUIYjO7IyvawyfCQhuWXvsUELftqHf/eoHYRpFHbnEocJB1VGO2bEVPMUo1rmXBVCQ6whKqsygHPtsySVAwMT+jwyT0Jlmho8lhZSjoO2nLaUrGEKb8SdPFsQn0zbWHPcYFtJ93TcI+6fmLfjdhsYJaI5ckffd0MNMuPF86JvKpHE+py3YWT6q3GRtdMxw5AkFUSPREUUG81scXdpHXKMjJJ7GPybESlruA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Pbjqto8d6tiRU9oqbGanxqpDOPZ/wTzCU7Wfq0xwiBU=;
 b=u1RpTNni55/1/aRUnaqS6+eOM50DRD8bP0tH2i+sanPeRVtGY6fRL5xRmEGtyRXXUiB52TJB+6In8aQvgYYxF3fDfUBeEF4L/GeUTJ1AWTk90GKhvCpj3l4yoKrH1JWICoyCPz9X2/pmxO5QTBHHLrUOGXb1uezmePnKgI8V7xOhDaPl9KmkuDgpfvoqAMzTawbiB7YDK9L80VON6pOeCLSIrOpO9quEYjo0uPoSu9Jln/1u28JRwukkPpX9U+xuRoQLaiifySKzEJJtotHaORZUEc5SmDSRz/EFEWofBelSk2B8hd4d9MX5un12tGWw/5JeBs1Bp/IQ+vi+p4ChvQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by DM4PR11MB7301.namprd11.prod.outlook.com
 (2603:10b6:8:10a::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.159.14; Wed, 24 Jun
 2026 12:55:52 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::88d6:ba41:128b:4081%6]) with mapi id 15.21.0159.015; Wed, 24 Jun 2026
 12:55:52 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH v2 24/28] drm/i915/dp_link_caps: Add helper to reset
 link_caps state
Thread-Topic: [PATCH v2 24/28] drm/i915/dp_link_caps: Add helper to reset
 link_caps state
Thread-Index: AQHc/c13APAciO17Qkq5dCxkM+sTJLZNteRQ
Date: Wed, 24 Jun 2026 12:55:52 +0000
Message-ID: <DS4PPF69154114F634D7CED175FD4EA6719EFED2@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20260616200849.3534628-1-imre.deak@intel.com>
 <20260616200849.3534628-25-imre.deak@intel.com>
In-Reply-To: <20260616200849.3534628-25-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|DM4PR11MB7301:EE_
x-ms-office365-filtering-correlation-id: 34a4c8e9-9e80-4283-d93b-08ded1efec7d
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|23010399003|366016|22082099003|18002099003|38070700021|3023799007|11063799006|4143699003|56012099006|6133799003;
x-microsoft-antispam-message-info: d1Dk2Mm5lDpidh1X5OfciHJ9YIH2QwH1wAAQUTm3uviP4syyqvAAejjwHxkNJHtObDHToyI2cW8sFb/EYG+IIt7SI6hmxjywJdOd1vmFDqwhIDcSwNM3YOgKr6f77y984ucGOd+tA7G3O3Qehwb+sWLhb8wiyHvlFT9O8JqyDQxTwQntvNK7zhxjWwLNva0bypERR7IsItaDAwuOfwnXnP2KzicfgI6LNYvu5JIV8eKwzAm3g6OmqIr9RK5RJVBAHIw20EtFHttHVyXQ9XOi6mAfglOAc/XH2N0pbseX/zlEKw5K/o6a3rKK8DXbD6CsHM2eCfxFkOFuCKzw5Ncv5p5NS6i/eOfmpzK/8ZABwGqTUGlwmwfUxQMD3lzVLJK/zgPKs+VKYVJKwem5N36EAzgVi5kcC3oykz2FwJU+EOM+aYXdh4/YqzlEPo4+aUsRdHh6s2bnAPq0iVFMpylwNhn/PwmSR1jEvwRNxvDrjFHxQyUxhfIzZ8KczyXQz2gXI5Qm8qkqgfTcS4THFcrzvR5mNxI70Umw9a7xzsCbPa9s4y5mTTp3nCNMV8k840E9BuXB04PhmJlww3wXSiRYCo/7CTIBR7NgpvOUw+Q2Z59sV34zk4h4xHmL076J7RoiD1R+8tO/sDrh0nRV5ejysAfTeYhh0adagvv1ofVJtkbA8+5bUz4tIXpBYEqZt4dLIn6N1VtClqA+dDuu7CJJNFf2eQUoSb7TOq5ddAuFDYw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(23010399003)(366016)(22082099003)(18002099003)(38070700021)(3023799007)(11063799006)(4143699003)(56012099006)(6133799003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Uk51bjMyS01ZdEVwaEhPYURzaU9rbzk2WW5oWFMzTTFXUEpDcU9YZlN0MElp?=
 =?utf-8?B?Mkl5N1dHVDZEWXJRM2xlSUZNcHNOcFdvdGtaQzBqNjYyOEpkRVdZaVhoeE43?=
 =?utf-8?B?VWZUR3VjUCtMdW9CZ2QvSFhKcEFqaEljOWJvWkVUN3JUakx2Mzk5TkZVU0tT?=
 =?utf-8?B?WWt6YUliSDlVYldlMXoyVDh6N2xtdjJQODAreXBtNk8renlBb1JrSWtmNDZo?=
 =?utf-8?B?UEpYUE5ka0ZucHFNMWMxRTcxNzJIVW81eDM0a3ZVaWhySlpXeGxuMkl4YjRY?=
 =?utf-8?B?MXBXdlhSelBqRUg5RkZKaGEzNG80SFk3djYyeG1ZSjBPalF3dHU5ckV1Z3Fh?=
 =?utf-8?B?SDFxU00rY08yNVdxVkhFS09DT3NOMmFKTmd6MjJBK2ZJRDdOb0ZIcW1iLzB0?=
 =?utf-8?B?aVFHMmZVaDdQdFZaR3dLbTcvd3p2YzhTMy9YT0xFeHlpK2lYZTlJNHgzOXJv?=
 =?utf-8?B?c3J6eWZEMk1VU2VTRG4zVHFXQU1qT0VTV2dvbVRMVXE3c0tJN25SeG1zVTVY?=
 =?utf-8?B?R0ZRVFpZLzgydHFmdllObldkWi9zQ2FRL1hHYlZiL0ZlUmVQcDFZTW44RmhI?=
 =?utf-8?B?TFhGQWZMVVhhNzV4OVdsc2lic3NTV3cxVG5OWU9rQlo4RWdrdlgzQm1UeFNv?=
 =?utf-8?B?T3hrN3NNUm1BemJ2dUpUOGJncisxZDYyYlY5Z2NSOGlxbWMzZVpOa3VPQ3dQ?=
 =?utf-8?B?NEpRbnR1YThqdkhqR3I5cUNEUzJBVko3OHp4RWFwQi84MkZnMXprQXE4cmVF?=
 =?utf-8?B?ZEJpazhpR05aS0VDU3ZxYXMxUUVXbG9XZmNXTFRNbTFvZEVGU3psVXBuY05X?=
 =?utf-8?B?WStBSCtwNG9lTjhZMEIxajJtQk9wdzdBSEFhemRNellRZ2txam5SRlBwREZK?=
 =?utf-8?B?ZHBUNWxOOUNFZkVtdDFKYzdUM3grRmhtMlgyd24wNEtWem5YaFQxa0JTbUwv?=
 =?utf-8?B?WTZFL3FXMk5rMjRCVUczUTZZSzZnZHJoNHlFOFNzQkYveUNpclIyTVEvVXJw?=
 =?utf-8?B?aE9lRFNBbmE0aG1TNGFrWmNnNG5yUmIyYS9ZU0MrUXNMUTNOTGZBcEozcFZ5?=
 =?utf-8?B?c3ZQdCt5eWRLYjNGQUdkMkxwZ0wxMkV1aWwrU2pNYzhoaWRPYThQOW1Jb2lK?=
 =?utf-8?B?V3BNUGtyQnRNZmlqWUlUMXB1SXRJWWVpSEN6ZGx5b3h2TkJWR3Y4WFE3TDBR?=
 =?utf-8?B?dWcxOVRtK3lhZXdZMCtaNjFBYSsxTW1BbmNCZHhKQWNWeUdYVzZaNWFBM1ZB?=
 =?utf-8?B?ZFFobVVMLzBQS01kSjAvek9RdXR5VWtqVjJCcC80KzZLaHNmOEU0ajAwNk5H?=
 =?utf-8?B?WUltQTd1WjdheFU5RjdJQlVmMDNsOGdEdVVNbmFkWnh4ZzJLTm9NcWU5cU9W?=
 =?utf-8?B?VFozN3g4ZWR3VktlcXRjcTJvc3AvdzM5Z0JOcC9XRWYvYWtjbkdOWDBHWkNw?=
 =?utf-8?B?Wkk3cVRxYUVOcnR0aWZ5NlQyOXFEWDRtVzYzQVBxdDVMWGN4KzF6aFd0b0pk?=
 =?utf-8?B?QlZDdVpjSEtiUEdZZzQ4dFk1dkZyQ3J2N2p4d1lJcnphdGIyWHlybTJKbkc5?=
 =?utf-8?B?L2tJWXVZL3ZNakI4ZDZmOHlEcjJMK1ZMdGFCRnJqUitRR1FJczhRNWc2emJM?=
 =?utf-8?B?bklTRnpYUHhCR2JSSGVhcjR5VjdsaG93OEpranNJOHRGYUVldUZJazNBWmFQ?=
 =?utf-8?B?YWlYWlFaMVlCUEdHVlZNU3BQODRxbUlzTS9wc3U5TzBXVitNd1hvODhYUzFt?=
 =?utf-8?B?TWtnc0tFUzVsWklHRGVhNTlQSFN6YzY2MXh3N3h5VGNOMytTSEpzR0d6SDMz?=
 =?utf-8?B?NmQvclBPWThwOU0reHNvWWk3RmJRSVR3bnR1YUwvSWhqUkl3bGtHSzdDQTd3?=
 =?utf-8?B?Nm5vdFIxdzcya1RKdEtNQzA4eUdxZjVJRm1KSGF6T0l6dWN0WnhOZmRwMW1O?=
 =?utf-8?B?MVk1QjN3OUVLS2dTZTFaenhJcWgwT2E2bVRNUjRXZ2Z4U2RjdFprSGhJdU0w?=
 =?utf-8?B?M3B2UGlsdkxub0h5OEk4aE5KRXlISmJxb2J2RzgxYUUvbkZHeUppWHFTRmpP?=
 =?utf-8?B?VWI5aEw3SDFUYzhZbFJIbW9lSFRWbjZvWnZBd00wYXhNSUpQeVIzS3grbnAv?=
 =?utf-8?B?S0p0Q2pDY3ZmOFZkMzN2bEcvZk5XRU1vWmxXbkk0N2xUWHFoc3BTSWNqTEpu?=
 =?utf-8?B?b0dWaVBRZVVuam5UQllKbWJnejZJUzhoZGZxbi9Yd053eUVFN1Zqc3JtQ3Zw?=
 =?utf-8?B?cjNmS1M3TFZLMmc1ZjVyM2paUWRHZHBMdDBsS1RsSWtoWFdhc0dFQnNqMFNI?=
 =?utf-8?B?ZWxBTmsrcFJEck8xOVhmZ2lSalpVWGIwSTBZOURHWGVCY0U4RXJDdz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: OpAnwvIunfouU7OMSdpodz1Kx3CRRj9Z1XfHxpjsukvMjAbY2zOOFAhQk4Fzw8rOnVhsWrYqXEyh47fqscCHkFg0cBMDX62cEkttdZNr2TgYV3DQV4hcPXTdTOEVWZPzHpRQTTUhudUGoar7npSaR3TbA8Uc+VARUab3+EpLY4IZH/VmBN4WoEjnBWc+rPB4I8rveaN5C+a9t9zomS9XTP0ypJoAGtFL9IuvjtBzKJD8ochMci5JHze/2aXXNXGl5PIIopLYmcO+VKNpJd16wHIazxZvJ1mG9fXHNH9AZ2306yRhX/t2dJYAKK8FhvsPUQAPTs4zHbOZbQ+16NaMCQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 34a4c8e9-9e80-4283-d93b-08ded1efec7d
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jun 2026 12:55:52.8131 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: R9KvCH9y5QfkJv4kzqq11YsIMaaVDHeKBW9Le7pxbQe03VaotUVytIr+Mxy9rAM+lak6L+12B2XIVHXFqWlddw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB7301
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
X-Spamd-Result: default: False [-1.21 / 15.00];
	MIME_BASE64_TEXT_BOGUS(1.00)[];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo,DS4PPF69154114F.namprd11.prod.outlook.com:mid,lists.freedesktop.org:from_smtp,lists.freedesktop.org:email];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: 5C49E6BE4D8

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVsLWdm
eC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmIE9mIEltcmUgRGVhaw0K
PiBTZW50OiBUdWVzZGF5LCAxNiBKdW5lIDIwMjYgMjMuMDkNCj4gVG86IGludGVsLWdmeEBsaXN0
cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBTdWJq
ZWN0OiBbUEFUQ0ggdjIgMjQvMjhdIGRybS9pOTE1L2RwX2xpbmtfY2FwczogQWRkIGhlbHBlciB0
byByZXNldCBsaW5rX2NhcHMgc3RhdGUNCj4gDQo+IEFkZCBhIGhlbHBlciB0byByZXNldCB0aGUg
bGlua19jYXBzIHN0YXRlLCByZW1vdmluZyBhbGwgcmVzdHJpY3Rpb25zDQo+IGV4Y2VwdCB1c2Vy
LWZvcmNlZCBwYXJhbWV0ZXJzLCByZS1hbGxvd2luZyBhbGwgc3VwcG9ydGVkDQo+IGNvbmZpZ3Vy
YXRpb25zLiBDdXJyZW50bHkgdGhpcyBvbmx5IHJlc2V0cyB0aGUgbWF4aW11bSBsaW5rIGxpbWl0
cywNCj4gYnV0IGZvbGxvdy11cCBjaGFuZ2VzIHdpbGwgYWxzbyByZS1lbmFibGUgY29uZmlndXJh
dGlvbnMgcHJldmlvdXNseQ0KPiBkaXNhYmxlZCBvbiBhIHBlci1jb25maWd1cmF0aW9uIGJhc2lz
IGJ5IGZhbGxiYWNrIG9yIG90aGVyIGxvZ2ljLg0KPiANCg0KUmV2aWV3ZWQtYnk6IE1pa2EgS2Fo
b2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoNCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFr
IDxpbXJlLmRlYWtAaW50ZWwuY29tPg0KPiAtLS0NCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYyAgICAgICAgfCAgMyArLS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlz
cGxheS9pbnRlbF9kcF9saW5rX2NhcHMuYyAgfCAxOCArKysrKysrKysrKysrKysrKysNCj4gIC4u
Li9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaCAgfCAgMSArDQo+ICAz
IGZpbGVzIGNoYW5nZWQsIDIwIGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pDQo+IA0KPiBk
aWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jIGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IGluZGV4IDNiM2MzMTEyMjQ1
MmQuLmI2M2M2ZjA0N2Y4M2EgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwLmMNCj4gQEAgLTM2MTAsOCArMzYxMCw3IEBAIHZvaWQgaW50ZWxfZHBfc2V0X2xpbmtf
cGFyYW1zKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+IA0KPiAgdm9pZCBpbnRlbF9kcF9y
ZXNldF9saW5rX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiAgew0KPiAtCWlu
dGVsX2RwLT5saW5rLm1heF9sYW5lX2NvdW50ID0gaW50ZWxfZHBfbGlua19jYXBzX21heF9jb21t
b25fbGFuZV9jb3VudChpbnRlbF9kcC0+bGluay5jYXBzKTsNCj4gLQlpbnRlbF9kcC0+bGluay5t
YXhfcmF0ZSA9IGludGVsX2RwX21heF9jb21tb25fcmF0ZShpbnRlbF9kcCk7DQo+ICsJaW50ZWxf
ZHBfbGlua19jYXBzX3Jlc2V0KGludGVsX2RwLT5saW5rLmNhcHMpOw0KPiAgCWludGVsX2RwLT5s
aW5rLm1zdF9wcm9iZWRfbGFuZV9jb3VudCA9IDA7DQo+ICAJaW50ZWxfZHAtPmxpbmsubXN0X3By
b2JlZF9yYXRlID0gMDsNCj4gIAlpbnRlbF9kcF9saW5rX3RyYWluaW5nX3Jlc2V0KGludGVsX2Rw
LT5saW5rLnRyYWluaW5nKTsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RwX2xpbmtfY2Fwcy5jDQo+IGluZGV4IGFlMTAyMDBiZGQ5MzQuLjliN2RhNWE2NGVl
MjUgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHBf
bGlua19jYXBzLmMNCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
cF9saW5rX2NhcHMuYw0KPiBAQCAtMzUxLDYgKzM1MSwyNCBAQCBpbnQgaW50ZWxfZHBfbGlua19j
b25maWdfaW5kZXgoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwgaW50IGxpbmtfcmF0ZSwgaW50
IGxhbg0KPiAgCXJldHVybiAtMTsNCj4gIH0NCj4gDQo+ICsvKioNCj4gKyAqIGludGVsX2RwX2xp
bmtfY2Fwc19yZXNldCAtIHJlc2V0IGxpbmsgY2FwYWJpbGl0eSByZXN0cmljdGlvbnMNCj4gKyAq
IEBsaW5rX2NhcHM6IGxpbmsgY2FwYWJpbGl0aWVzIHN0YXRlDQo+ICsgKg0KPiArICogUmVzZXQg
YWxsIGN1cnJlbnQgcmVzdHJpY3Rpb25zIGV4Y2VwdCBmb3IgdGhlIHVzZXIgcmVxdWVzdGVkIGZv
cmNlZA0KPiArICogcGFyYW1ldGVycywgdGh1cyB1cGRhdGluZyB0aGUgc2V0IG9mIGFsbG93ZWQg
Y29uZmlndXJhdGlvbnMgYW5kIHRoZQ0KPiArICogZGVyaXZlZCBtYXhpbXVtIGxpbmsgaW5mb3Jt
YXRpb24gYWNjb3JkaW5nbHkuDQo+ICsgKg0KPiArICogVGhpcyBmdW5jdGlvbiBpcyByZWd1bGFy
bHkgY2FsbGVkIGFmdGVyIGEgc2luayBpcyBjb25uZWN0ZWQsIGVpdGhlcg0KPiArICogZm9yIHRo
ZSBmaXJzdCB0aW1lIHRvIHRoZSBjb25uZWN0b3Igb3IgYWZ0ZXIgYSBwcmV2aW91cyBzaW5rIHdh
cw0KPiArICogZGlzY29ubmVjdGVkIGZyb20gaXQsIGFuZCBpbnRlbF9kcF9saW5rX2NhcHNfdXBk
YXRlKCkgd2FzIGNhbGxlZC4NCj4gKyAqLw0KPiArdm9pZCBpbnRlbF9kcF9saW5rX2NhcHNfcmVz
ZXQoc3RydWN0IGludGVsX2RwX2xpbmtfY2FwcyAqbGlua19jYXBzKQ0KPiArew0KPiArCS8qIFRP
RE86IFVwZGF0ZSB0aGUgbWF4aW11bSBsaW5rIGluZm9ybWF0aW9uLiAqLw0KPiArCXJlc2V0X21h
eF9saW5rX2xpbWl0c19ub191cGRhdGUobGlua19jYXBzKTsNCj4gK30NCj4gKw0KPiAgc3RhdGlj
IGludCBpOTE1X2RwX2ZvcmNlX2xpbmtfcmF0ZV9zaG93KHN0cnVjdCBzZXFfZmlsZSAqbSwgdm9p
ZCAqZGF0YSkNCj4gIHsNCj4gIAlzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yICpjb25uZWN0b3IgPSB0
b19pbnRlbF9jb25uZWN0b3IobS0+cHJpdmF0ZSk7DQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oIGIvZHJpdmVycy9ncHUvZHJt
L2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX2NhcHMuaA0KPiBpbmRleCA3YmFlYjQzNTlkMmQ0
Li5mYTQ1YTQ2NzIzMDU5IDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RwX2xpbmtfY2Fwcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHBfbGlua19jYXBzLmgNCj4gQEAgLTM1LDYgKzM1LDcgQEAgdm9pZCBpbnRl
bF9kcF9saW5rX2NhcHNfcmVzZXRfbWF4X2xpbWl0cyhzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBz
ICpsaW5rX2NhcHMpOw0KPiANCj4gIGJvb2wgaW50ZWxfZHBfbGlua19jYXBzX3VwZGF0ZShzdHJ1
Y3QgaW50ZWxfZHAgKmludGVsX2RwLA0KPiAgCQkJICAgICAgIGNvbnN0IGludCAqcmF0ZXMsIGlu
dCBudW1fcmF0ZXMsIGludCBtYXhfbGFuZV9jb3VudCk7DQo+ICt2b2lkIGludGVsX2RwX2xpbmtf
Y2Fwc19yZXNldChzdHJ1Y3QgaW50ZWxfZHBfbGlua19jYXBzICpsaW5rX2NhcHMpOw0KPiANCj4g
IHZvaWQgaW50ZWxfZHBfbGlua19jYXBzX2RlYnVnZnNfYWRkKHN0cnVjdCBpbnRlbF9jb25uZWN0
b3IgKmNvbm5lY3Rvcik7DQo+IA0KPiAtLQ0KPiAyLjQ5LjENCg0K
