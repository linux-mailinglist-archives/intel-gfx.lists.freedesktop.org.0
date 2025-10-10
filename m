Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 36A79BCC43C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 11:15:02 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74DE710EB88;
	Fri, 10 Oct 2025 09:15:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ZgMVBeh8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 131B210EB71;
 Fri, 10 Oct 2025 09:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760087699; x=1791623699;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=hZOrWGcIaAa3n+53vWkb3PgsSLt6m6oJXHqI3T8MWz4=;
 b=ZgMVBeh8swzoJm+6arUS1VQYZSQKlQP/xZMy+tFrxTWc3snoAgTCOc8T
 pRiOXShXURS8uVx8FEglovS6lj/RVwEdxfaziWSsY1L+Pu2c9LmyWHOoC
 m4f60wfN4tgt73rvyPs1o8ZuOxyiot0K0IsLGCAf7RJvb4bsoPwFJANk1
 UXFYXb1pyRWByDlpezH+KVQaAYmKbWFA3kixxlw9iZNZCB3D6FhXG7PuN
 fB8gqXIXMoBlbVTmkuMXd3ebbAmtdaPt94BFM1lsaiFoy0pbePtG9qQMe
 WDYQ9MtS1tSwjl8G8aKHY2pWGSatlABdc0GSAQCE6n9C8yfuZQ9WtYhQ+ w==;
X-CSE-ConnectionGUID: 1ot1OD1gTC6ARKPo57sXew==
X-CSE-MsgGUID: NGppbl9OTxmtqXsTYK3j7A==
X-IronPort-AV: E=McAfee;i="6800,10657,11577"; a="73649642"
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="73649642"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:14:58 -0700
X-CSE-ConnectionGUID: XlSk+AYqTg2JiYUuTc2x7w==
X-CSE-MsgGUID: rSrRp4cKR4iC/Kx+hyqlNA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,218,1754982000"; d="scan'208";a="186055120"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 02:14:58 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:14:57 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 02:14:57 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.42) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 02:14:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=XxM6TmwQDMxL08qRAA5k0xAi9RFCkj4x308w4JPG8fjLyA1cE0N68AvvO3ySRpWuNKpTTbAor7gXc6YTkBQkrvYz+4mOL1hGjMvfHY1crYf1jDdZiCSVegETWPXr9xD9ICSm3PjrSGRGlyUBO9vLeOCSAqOsyS2rFIu6Eu8TDXXsEAeOwAUsEl8f2tgBoKwMwm65/r4tMXTyVgqIC++jxn5fCs0nH11oyaIGWlrKEhWWqlpvezoMlUrya4RgznU409WwPSwVAZwE6jc94U/ahBEJtSVa3uM6sAEr4JGf7MUFCLXJ2nHVf/2oLkaci++qzfiR8tSLFRpB0RNXHBzuCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hZOrWGcIaAa3n+53vWkb3PgsSLt6m6oJXHqI3T8MWz4=;
 b=WALLxeUcukFja3ep3mMl3rZEALI2nsEVbYnU34SXd6QPy/kEwTU4R6GamCWQHWEQJAaKMjJeD7MA5FYSu7LkQisC5qLX6IJ0vfejsPBCQQi0oe4RJeDtPkAgjMqIjWiqx3tyWyMNpNlfF2bj6PxG5TX4Mqr1a6imlRN3FGkQwKeEpDvitAkyT8F0k5VAkY52jMXW/13ZEjsUBt2J9gw0EAItrWM0Ebh1TtJEuuG9dr5pPFOZbjr3GBl+f9N+dEsYDqjyIFecdR4YefFnOp0perznUAN+/7sxGfrWmeIx5INTEwM/DZk8Y6PaZgCSJs2DjB+WVrcG+HCjhfp05JNEXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CH0PR11MB5491.namprd11.prod.outlook.com (2603:10b6:610:d6::19)
 by PH7PR11MB6546.namprd11.prod.outlook.com (2603:10b6:510:212::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9203.10; Fri, 10 Oct
 2025 09:14:55 +0000
Received: from CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b]) by CH0PR11MB5491.namprd11.prod.outlook.com
 ([fe80::250:1566:d191:a23b%5]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 09:14:55 +0000
From: "Ravali, JupallyX" <jupallyx.ravali@intel.com>
To: "i915-ci-infra@lists.freedesktop.org" <i915-ci-infra@lists.freedesktop.org>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: =?utf-8?B?UkU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBB?=
 =?utf-8?Q?void_lock_inversion_when_pinning_to_GGTT?=
Thread-Topic: =?utf-8?B?4pyXIGk5MTUuQ0kuRnVsbDogZmFpbHVyZSBmb3IgZHJtL2k5MTU6IEF2b2lk?=
 =?utf-8?Q?_lock_inversion_when_pinning_to_GGTT?=
Thread-Index: AQHcOSLhW++jkzwznUGMt5F71TYnP7S7B5eg
Date: Fri, 10 Oct 2025 09:14:54 +0000
Message-ID: <CH0PR11MB549137608B1E2B702B6078ABEFEFA@CH0PR11MB5491.namprd11.prod.outlook.com>
References: <20251008161258.3568573-5-janusz.krzysztofik@linux.intel.com>
 <175999697874.21440.3520313004963716096@6aec98b87f92>
 <10059071.ag9G3TJQzC@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <10059071.ag9G3TJQzC@jkrzyszt-mobl2.ger.corp.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CH0PR11MB5491:EE_|PH7PR11MB6546:EE_
x-ms-office365-filtering-correlation-id: 4c12c5cb-1586-4207-cadc-08de07dd7a0e
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|10070799003|366016|38070700021|13003099007|7053199007;
x-microsoft-antispam-message-info: =?utf-8?B?ZzJRWjNtY2NEWS85Y2pEQUlEemo5NVpFNEgvNnNldmQzY0RoMXlNWU0yZjA0?=
 =?utf-8?B?T0Q5bTVZOXRSNG5sZTJVSCtTUlNMdFloVytoMHAxNldQajJYSlUxYUJPcVpY?=
 =?utf-8?B?Ylh3SlRnenRkWjNaUmg1Qmg3VVkvL0djZWU4QVRjeTI3SVdwVmJKVWYxM3g2?=
 =?utf-8?B?Rjlzd1dhRzlML2toblZBdmVoVE1pZjYyU1RDZjI1cGhXU3dEY2FRRGdyUHVD?=
 =?utf-8?B?ZERBRG91bTVhOGx5WW10QkwyMmVjaWNRblQ1WlFjeWhCV0xTU1pPRzVmdXZ0?=
 =?utf-8?B?UjRJMkgzbEUzdTZYT3ZBQms4cnJZQTlIQzZURHg5V1FFb3hiZ1pvNXh5YjdD?=
 =?utf-8?B?VjVodENNb3NEUHdHd3VmajJhdEFVUzNCSFhTNHIydlZZR0JuVXcvMnJ4MWkw?=
 =?utf-8?B?bEYzY0EwL210TmdybnZwTzFsOHFsWEZzcFU4c0U3dndEYm9rdmdReWRtODNk?=
 =?utf-8?B?RW80WW9pcUlLMDRHNWdhMFVlWXJDZ3ZsWjNJSW1haTU3UjNTd2hZOW9KSDZ3?=
 =?utf-8?B?bm13YSt4WVdZNUFQWG5LeG5MaUJZNEpac2R5R1lFWVcxUnhCZXM5bHdmc0I2?=
 =?utf-8?B?OCs4ZTE1VHY3aFdEVU9WcHdvbStJOWJIY1kxeitsN2FCeHdTKzRiUXlpdUxE?=
 =?utf-8?B?VHVJWEt0c0ZhNmxwZ1RJbGcxV29IcjU3VWprUHNxTm5jbkxqQ05GODVJSEQv?=
 =?utf-8?B?RzJCVDFkUU9QVUtlQUt5a1lZdUZ6WHVtZ0JpNWFtMkxkbEhZdVIwK3Z2cXpW?=
 =?utf-8?B?UElKcjdmMWY0RmEwY2s3ZFVpeGtaQW0veUFPS0N5ZmZuVU1rb080NFBuTHda?=
 =?utf-8?B?VDdrYUg2QmJVeFlkenV5ODdLblp2ZW9ONEZhQ2NWQ1daNk1WR21oaFRHV0Jr?=
 =?utf-8?B?MWsxZ3VHTE54bmk4dXc3MzN0Mlp1YVJST1VKYURrWHU1UGs4NFhWaHMzMWNp?=
 =?utf-8?B?eEVwc28vaDFOL05LeDJYcjVKWUJJbW9ES2E4UVM4M25QNHZSRlZ1MFlremJs?=
 =?utf-8?B?eXlHSWpRRkJPdi9qOVYyNlFZRWI2ZVlkdUFzRlh3c3V5UjlDYXVEc3lwYmEr?=
 =?utf-8?B?Y1pWNWRrN2FIVFJNYlhFSmpBbDY2bzJXYXZTcGxkNWYrNFdwRnREbWV4aHdw?=
 =?utf-8?B?VGhCSGJxeGZXVm5OajdRcUVmQk5Oay9wUkJSalRQa0taUlp0Nm1oOTdvMzIx?=
 =?utf-8?B?ZmxrWFNMOVBiOXpmSHlxckcwTGhFclBqRjFmb3ZWTUlaTzkraXpvY2RvRTVY?=
 =?utf-8?B?OFZmSkdkVjlZZDZubzBkdG5FQURmUE5XUmZXZUU2UjBGRWtKMVRzRko0M0I5?=
 =?utf-8?B?OHRRR0k0REpVV2pYa0lXQlpmbm5OeXNKVHMvOG56OVJXTXBIbEFOK0ZOZUMx?=
 =?utf-8?B?T2pnNXhlZDcvVENkRG5JamxCKzlLRjYwSzhQRHNrR0d2cmxBdVVWRE5FMGxZ?=
 =?utf-8?B?U2N0cWlJZ1BFaDZ2QjZNNlJNY001SDRlMEs4WVJzeFVaWnk1MU44ZVZ4cTZW?=
 =?utf-8?B?THZ2RDhibks3T0Rqb2dxMTdLQnpZQS9sczhXOHJ2QWpjMnRHL0ltblRsQzFR?=
 =?utf-8?B?OC9yYnRsUnpSSlUzcGxpU09Ud3RacHlHSUxscjVBNFJ2ZkNqeVpsS1MzMmt5?=
 =?utf-8?B?VGVVelZUSThHL3pZL3dCclhlSUVOdjBxNWVGa0lkdVZRQVhoc2Fic3FsQ3RL?=
 =?utf-8?B?Y2dUZ3FJVSsrSzZqRW9mQjA4a1ZnQjlRRW9OUEVtZTZOOW1rWHpicDJON09S?=
 =?utf-8?B?ZzMyZGFQeDMrbHg1c1J6WVNnVHVqS2JzeUpVT0p4dWNzVVh5ZGt4b200TENY?=
 =?utf-8?B?M0VUNTVyNTVnekthdThiRmtQNU81YW5kL29yVm03KzdNNmtCNE1kaFFUR0RK?=
 =?utf-8?B?cUV4alluallxVnQ4NGgvbHo4aHhXeWk3VlZDUlZraHVKWm9HOWRFUHI5TzV2?=
 =?utf-8?B?cXdzbFZkbGlzdWp3ei8vdGxINTY5Vlg1TDRQbW1Va0RaenpkK2RBMmI0MGlU?=
 =?utf-8?B?RkhHMzY4K2dRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5491.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(10070799003)(366016)(38070700021)(13003099007)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?ZUh3UFVrYitZRjRrN2h4ZkNQM2QySXFWVG9EQUdOZElRaEo2SnhSelprSnBL?=
 =?utf-8?B?Q2lGOUY3QmVOamlRN2M1aVVRaWxDK3dhUXhlZ3UrRVY2TUlZbUQ3TjRVVmNI?=
 =?utf-8?B?eHNnVlN6ak1pV0ZWd25pMjl1YUVtMS9aQTZ6bGlmeDkxRE9LY2liUVhuVEsy?=
 =?utf-8?B?OHhnRUg3YnVDcDlqd2FCc01JMXR4VVJVRWJSOU9ETkcyS3RQazk1dEFna2hK?=
 =?utf-8?B?a0d2Z1gxbkgwbWI0blI4alJhM1dmM0g2dWg2dm9zdmVZTjUxbjRIMkZFREJG?=
 =?utf-8?B?N1pISVlaNVY5aVpaKzNwNktwUzJOQW4zTnh6UW5rU0ZyZ3EzZGdVSXk5RkVs?=
 =?utf-8?B?M3YwME15RDAwa0tsOS9EM2dxWXNrV0NJT1hmV2tmT25OKzBoc3BaM0p1Q1VO?=
 =?utf-8?B?SHV6OGx4ZlFlc3FyWHJ3Tk5JQStxNHJsenY4TEh0Y2FtM1FaV1A2RWV6dTR5?=
 =?utf-8?B?SWtBMDRtUkMzd1lMaDNuQm9UNmIrcyszRFlFRWQwMXFFZlY1eTNqUmsyaW1R?=
 =?utf-8?B?VTJPZmlSK2UzU29iUy9RelhNVHUrOEN4RU1wMVkrTkVzUzk2Qkpmck5FSU9p?=
 =?utf-8?B?RVBoVHAyL1BOckgxVFdqSjhEaHZFQXlUWFgvWDNYaVF4NENrSmVoaHdMYlZo?=
 =?utf-8?B?YkJQMUNDNmhjR2hkdVh2SWI0WmVPMnpxUXBuZ2ZCbUsreWRteE9mSGtXUG1G?=
 =?utf-8?B?S3g4dFBieHd0eG4zZUtSRFExTGNFMVJhME15YUN5bUdReHVWUGhIQS9XUFIv?=
 =?utf-8?B?L2xSZnh5eDRpelp4TC9xTVF4VXVGd2FidXZuRlhQNHZTWW1GTnVPZ1RtMkhD?=
 =?utf-8?B?bVRRVXMwNURQcWVIVkttek4yTWptWC9kRWdoTkl1bHF0SUtzeVRrM3NwQU5u?=
 =?utf-8?B?UkM0aDBTYUlaSEQydm5uTzlmcmxiRHJTeStmeFVPVmhiUFdtRm0vRHBaRXZy?=
 =?utf-8?B?WGlnV3lKaUo5RGM3d0x3b2RLRmpTUUFNRDkvTGdOOXhKOFZWeTlRa2tGTDRE?=
 =?utf-8?B?RWVvaEJSNmlkeVppLzFTSXNQYzc1Y25NNVdhcTh2dVdGa1dhYlBHWmJNREtu?=
 =?utf-8?B?WExldVVZR2d1dkxkSDd4WjFTRVFTR0RSTXZ1cmhsZWxTR3pydm0zZWRLK1V6?=
 =?utf-8?B?NG0yajloN0ZYcDBBYTBCYVZlbncwcGcwcEpITnNJN3licHlJcDVvWUd1a2wy?=
 =?utf-8?B?dXplS3RBemFHYUlvLytNMWROZXVsaTZ2NDlKYmhUdTE2RjlhV3JFTXJ4UXBw?=
 =?utf-8?B?NmFYWkh5RDEyOEZLcDZwL2VvWDJBYVJXc011WkNDZllsMVg5L0JXMU5mdnpr?=
 =?utf-8?B?R3NLdk04eUJkRUZyWDN6c1pvNUNqMFZzQm5uRVNRNHRMamtxN0ZJUytHOHhO?=
 =?utf-8?B?NFg2QW9CdVN6dE1peE9ONkoyNUFZakJTS3h2SUpEblc2YlZWR0x5U0k3bUhh?=
 =?utf-8?B?U0FySXloQ1N4RWlTd3dFdjJrSGMxMm13NDFrT2I2d211UEZKQldpNTNhSXcv?=
 =?utf-8?B?M0R6d2xiSmx3U1pYMUFmb2MxNlk3dlhybDZWOTJjcEkrRFAwSmRGL0ppVDVI?=
 =?utf-8?B?eGVXL0l5RDZkalRiOUJZUHJVaHBKeWR3MkJoaTFlaTk0YldEZ0wvcVlBNHJ0?=
 =?utf-8?B?VE1sMEhha2FrUzR2NUtEMlRGOG1NMEZpUUkyU3dmdXd0eG84dktDd0VoL3ZO?=
 =?utf-8?B?S0hJd3FxTmJmY20waGJYenUrN1ZoOGZaRXdyYTZ2U0RmTUJBUTZMYk5udTNi?=
 =?utf-8?B?ZXFIOXJOR2wzblh4dHdrMi9mbVNIOURnSVpSVmp4bVN4U1ZTREU4Zzg4K1Vj?=
 =?utf-8?B?eDZqemkyUWZ5KzEyNlMwdmo4dHR2SEVEUkRnWVdWTU0rSXVSdWhISUNIald2?=
 =?utf-8?B?elIxZE40MXNkU3p1RXZpTDRsb3crYTFzcTNVVGY3alJFM1lvZHI1dW02UmVv?=
 =?utf-8?B?VXpCd0xpMDZud2ZFM1RyYnRLT2RBSUI3bHdWbE9IVytFNlpzSzNqNFp0N0d6?=
 =?utf-8?B?QjdlYWhhN2FGeU9CTGpMek5BSDk1aDgrZ2FmZEtkTTh6V3BXcTIyOXNCblo2?=
 =?utf-8?B?UmJydWVoTjkxV1lZK3dDUUw3NndOUTloaEZMK3drdjdyaHM5NGxuMEg0TVlh?=
 =?utf-8?B?bGpqN2JsTjlxeHpRNlV2b0NuV3diTEJFSjhtVmw2V3dYZDU0a1RLNGUrRmpL?=
 =?utf-8?Q?JmhwmFvWUTvHQGByg75Ph7mSFBGlIuAvS+3Or2EQDLo9?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5491.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c12c5cb-1586-4207-cadc-08de07dd7a0e
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Oct 2025 09:14:54.9593 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: EBbc1/+eEyubJxYaVNhihxKmJDqtx/hZ/DAI439YQ1Z8wXK+anvn0HQFLOkoxylR642W+cIc1hOjhhH1KgHbqyO6RAhN/CKFPB1K6S4Pgz0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6546
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

SGksDQoNCmh0dHBzOi8vcGF0Y2h3b3JrLmZyZWVkZXNrdG9wLm9yZy9zZXJpZXMvMTU1NjIyLw0K
aTkxNS5DSS5GVUxMIC0gUmUtcmVwb3J0ZWQuDQoNClRoYW5rcywNClJhdmFsaS4NCg0KLS0tLS1P
cmlnaW5hbCBNZXNzYWdlLS0tLS0NCkZyb206IEk5MTUtY2ktaW5mcmEgPGk5MTUtY2ktaW5mcmEt
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBKYW51c3ogS3J6eXN6
dG9maWsNClNlbnQ6IDA5IE9jdG9iZXIgMjAyNSAxOToxNA0KVG86IEk5MTUtY2ktaW5mcmFAbGlz
dHMuZnJlZWRlc2t0b3Aub3JnDQpDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0K
U3ViamVjdDogUmU6IOKclyBpOTE1LkNJLkZ1bGw6IGZhaWx1cmUgZm9yIGRybS9pOTE1OiBBdm9p
ZCBsb2NrIGludmVyc2lvbiB3aGVuIHBpbm5pbmcgdG8gR0dUVA0KDQpIaSBJOTE1LWNpLWluZnJh
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZywNCg0KT24gVGh1cnNkYXksIDkgT2N0b2JlciAyMDI1IDEw
OjAyOjU4IENFU1QgUGF0Y2h3b3JrIHdyb3RlOg0KPiA9PSBTZXJpZXMgRGV0YWlscyA9PQ0KPiAN
Cj4gU2VyaWVzOiBkcm0vaTkxNTogQXZvaWQgbG9jayBpbnZlcnNpb24gd2hlbiBwaW5uaW5nIHRv
IEdHVFQNCj4gVVJMICAgOiBodHRwczovL3BhdGNod29yay5mcmVlZGVza3RvcC5vcmcvc2VyaWVz
LzE1NTYyMi8NCj4gU3RhdGUgOiBmYWlsdXJlDQo+IA0KPiA9PSBTdW1tYXJ5ID09DQo+IA0KPiBD
SSBCdWcgTG9nIC0gY2hhbmdlcyBmcm9tIENJX0RSTV8xNzMyN19mdWxsIC0+IFBhdGNod29ya18x
NTU2MjJ2MV9mdWxsIA0KPiA9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09DQo+IA0KPiBTdW1tYXJ5DQo+IC0tLS0tLS0NCj4gDQo+ICAgKipGQUlMVVJF
KioNCj4gDQo+ICAgU2VyaW91cyB1bmtub3duIGNoYW5nZXMgY29taW5nIHdpdGggUGF0Y2h3b3Jr
XzE1NTYyMnYxX2Z1bGwgYWJzb2x1dGVseSBuZWVkIHRvIGJlDQo+ICAgdmVyaWZpZWQgbWFudWFs
bHkuDQo+ICAgDQo+ICAgSWYgeW91IHRoaW5rIHRoZSByZXBvcnRlZCBjaGFuZ2VzIGhhdmUgbm90
aGluZyB0byBkbyB3aXRoIHRoZSBjaGFuZ2VzDQo+ICAgaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtf
MTU1NjIydjFfZnVsbCwgcGxlYXNlIG5vdGlmeSB5b3VyIGJ1ZyB0ZWFtIChJOTE1LWNpLWluZnJh
QGxpc3RzLmZyZWVkZXNrdG9wLm9yZykgdG8gYWxsb3cgdGhlbQ0KPiAgIHRvIGRvY3VtZW50IHRo
aXMgbmV3IGZhaWx1cmUgbW9kZSwgd2hpY2ggd2lsbCByZWR1Y2UgZmFsc2UgcG9zaXRpdmVzIGlu
IENJLg0KPiANCj4gICANCj4gDQo+IFBhcnRpY2lwYXRpbmcgaG9zdHMgKDExIC0+IDExKQ0KPiAt
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gDQo+ICAgTm8gY2hhbmdlcyBpbiBwYXJ0
aWNpcGF0aW5nIGhvc3RzDQo+IA0KPiBQb3NzaWJsZSBuZXcgaXNzdWVzDQo+IC0tLS0tLS0tLS0t
LS0tLS0tLS0NCj4gDQo+ICAgSGVyZSBhcmUgdGhlIHVua25vd24gY2hhbmdlcyB0aGF0IG1heSBo
YXZlIGJlZW4gaW50cm9kdWNlZCBpbiBQYXRjaHdvcmtfMTU1NjIydjFfZnVsbDoNCj4gDQo+ICMj
IyBJR1QgY2hhbmdlcyAjIyMNCj4gDQo+ICMjIyMgUG9zc2libGUgcmVncmVzc2lvbnMgIyMjIw0K
PiANCj4gICAqIGlndEBnZW1fY3R4X2lzb2xhdGlvbkBwcmVzZXJ2YXRpb24tcmVzZXQ6DQo+ICAg
ICAtIHNoYXJkLWRnMTogICAgICAgICAgW1BBU1NdWzFdIC0+IFtGQUlMXVsyXSArMSBvdGhlciB0
ZXN0IGZhaWwNCj4gICAgWzFdOiBodHRwczovL2ludGVsLWdmeC1jaS4wMS5vcmcvdHJlZS9kcm0t
dGlwL0NJX0RSTV8xNzMyNy9zaGFyZC1kZzEtMTgvaWd0QGdlbV9jdHhfaXNvbGF0aW9uQHByZXNl
cnZhdGlvbi1yZXNldC5odG1sDQo+ICAgIFsyXTogDQo+IGh0dHBzOi8vaW50ZWwtZ2Z4LWNpLjAx
Lm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTYyMnYxL3NoYXJkLWRnMS0NCj4gMTQvaWd0
QGdlbV9jdHhfaXNvbGF0aW9uQHByZXNlcnZhdGlvbi1yZXNldC5odG1sDQo+IA0KPiAgICogaWd0
QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNwZW5kLWV4ZWNidWY6DQo+ICAgICAtIHNoYXJkLW10bHA6
ICAgICAgICAgW1BBU1NdWzNdIC0+IFtGQUlMXVs0XQ0KPiAgICBbM106IGh0dHBzOi8vaW50ZWwt
Z2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE3MzI3L3NoYXJkLW10bHAtMy9pZ3RA
aTkxNV9wbV9ycG1Ac3lzdGVtLXN1c3BlbmQtZXhlY2J1Zi5odG1sDQo+ICAgIFs0XTogDQo+IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvUGF0Y2h3b3JrXzE1NTYyMnYx
L3NoYXJkLW10bHANCj4gLTIvaWd0QGk5MTVfcG1fcnBtQHN5c3RlbS1zdXNwZW5kLWV4ZWNidWYu
aHRtbA0KDQpUaGUgY2hhbmdlIGluIHNjb3BlIG1vZGlmaWVzIGJlaGF2aW9yIG9mIHRoZSBpOTE1
IG9ubHkgd2hlbiBydW5uaW5nIG9uIENoZXJyeVZpZXcsIG9yIG9uIEJyb3h0b24gd2l0aCBWVC1E
IGVuYWJsZWQuICBOb25lIG9mIHRob3NlIHBsYXRmb3JtcyBhcmUgZXhlcmNpc2VkIGluIHNoYXJk
cyBydW5zLCB0aGVuIG5vbmUgb2YgcG90ZW50aWFsIHJlZ3Jlc3Npb25zIGZyb20gdGhvc2UgcnVu
cyBjYW4gYmUgcmVsYXRlZC4gIFBsZWFzZSB1cGRhdGUgZmlsdGVycyBhbmQgcmUtcmVwb3J0Lg0K
DQpUaGFua3MsDQpKYW51c3oNCg0KPiANCi4uLg0KDQoNCg==
