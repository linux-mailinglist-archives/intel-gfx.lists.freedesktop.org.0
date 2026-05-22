Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gMV/MAviD2pERAYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 06:56:43 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EBC15AED28
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 06:56:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1798610E647;
	Fri, 22 May 2026 04:56:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RVlZSRN6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2946010E05F;
 Fri, 22 May 2026 04:56:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779425799; x=1810961799;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=PtT2I2cYd6yJb6V1SrDWwMHqNsAw6bKJKkqLv05FDf0=;
 b=RVlZSRN6gpUGUn7YsyrDTd2FbYfYZT6fQqtiNsTlSmAJh7oJOswHlrpV
 e0iYiRk88WcM0f+gaWFKBFxc+GanBxXRC6m/eVHHb7UqPYJB6ZB8maBmR
 nUEbPHi+1ps67PLdkX7X1IGVTKcX/V6MYveFxauv5vEaA1Bbr1AKK9l4H
 e4kjC/Ge8R6vTdleoBLoTKL7enRBkdOZ4bbOt4+zS/sn0s41aGo23uVbZ
 C0+XdDxslLQqGxcl2f1SWHUY1mDnBYLDJW3Dg8nCOSp4byiQz2OEJyZYy
 0pqNTbjAuC4I8YEg8JjL0z73J/F8mDSO+pLTQntkO0BecRj4p7LPYyqgh w==;
X-CSE-ConnectionGUID: wwiSoye7TZSICA81HWcyow==
X-CSE-MsgGUID: 1ScCY2cNSu2sGqJbLvwmGg==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="79503548"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="79503548"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 21:56:39 -0700
X-CSE-ConnectionGUID: SNWCZsQfSRiePHwgXtZFqw==
X-CSE-MsgGUID: r68UUUL5Q6uykwMqH26oeg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="236379156"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa006.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2026 21:56:39 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 21:56:38 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 21 May 2026 21:56:38 -0700
Received: from BN8PR05CU002.outbound.protection.outlook.com (52.101.57.47) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 21 May 2026 21:56:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=EOBeBVUDXiAMTPHXh4LG1tCWbQsrc59gyzw/katKePsfwegfCtShy96IH2hx+ht26Lfq7F//XvYcu1jyKnz5R9YdLgpoOQhgIxrTvhGY5yjkitd120DcINS2w9xFh6hvVWaE0/XF7O6dnqakxVcERmvNsKFtGeCYKYaP4ZW6LEdaIY1byyDfZqtDnydrHhm11mNcnw3RMqZKXrgAIkB0Bev1cbRpmAzrBFpS85Dtsco4/zU+7QhCLc+vx8NBh2CXTAIwojlxX4edlAJ+s9a4dw7ViOEiBJW0Z2R1rGr8hjaCZzVk7n6UYIZi4knP1JU2dGZQ3kbi++3AV2/u2eOIDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=PtT2I2cYd6yJb6V1SrDWwMHqNsAw6bKJKkqLv05FDf0=;
 b=c0kzchQ+pW7pT6PNs4/G6FxneKOR+DEL1c2HvUar8lwLruVGcO7s9ojzYg4awQckFvEGkxW9CNT+QWULmVwujKv7FrnwpIzqis91XnHXy0r5+vsRdRb89ac+PgKK2c0YSKSzwfDwkERgtAOCmJyCg+4+Rw5XOwBG++ZkHnB38SL1vqxnRisxeXbwTU4spbf0evN/cRINa8RxgxV5QJtNUbG1/tZtOpriIFZoFO2C8wbL2AE76aHCrZn5sqfGsf2Uu2d2qVO9vxuPoFXiM0pJ5YQmwrqj2rWWYTk/c3TceKFO1852gX49whmVdNYqaBg0u6ypxsgu42aK6DDOKftBAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 IA4PR11MB8890.namprd11.prod.outlook.com (2603:10b6:208:55d::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.14; Fri, 22 May
 2026 04:56:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.013; Fri, 22 May 2026
 04:56:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL
 computation
Thread-Topic: [PATCH 1/2] drm/i915/psr: Simplify the conditions for SCL
 computation
Thread-Index: AQHc5gtj5lTVw5BMRkykY8U9lp4fh7YZgqGA
Date: Fri, 22 May 2026 04:56:35 +0000
Message-ID: <b9ce77d164cec114eaf4f62795f00ff3bbaedc3e.camel@intel.com>
References: <20260517142753.2813959-1-ankit.k.nautiyal@intel.com>
 <20260517142753.2813959-2-ankit.k.nautiyal@intel.com>
In-Reply-To: <20260517142753.2813959-2-ankit.k.nautiyal@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|IA4PR11MB8890:EE_
x-ms-office365-filtering-correlation-id: 8eccc4f2-41c2-40c3-34a9-08deb7be7ff7
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|376014|366016|3023799007|38070700021|11063799006|22082099003|56012099003|4143699003|18002099003;
x-microsoft-antispam-message-info: XHrbRxaYNDBevwS1ZJCt75/Yz2G2UjU76bu86UeAMqxeKoAbr1MHcHN6lgKGNN1ReEBUXCcFX2410YpTrnMrYj4MEeSUMaSuSYcYTPTW6xmCOUcrF5uKA7Uo7tDZJiNmz0OHpxPtqqDzmlJujDnJtp0u/MciGMXPw55172fVYGtd3uvKUJ8H3f/Dgm1RJ8JahxaX1WxvUG+8XFA2wm9FnYyLyi+1BMHkryegJ/ZeYxrSJGk97pR6FjOOxFAxRqIhYaOkGj1sLRDlHVGljCqAfiWitUGQLps5e/fZ5yqI3YFQxgzjCy/3e/0Sn1upY7yQogLoicgCzFMLozEmeIneOb/ATrFeTC1wME7o9QwYQmAoPKnX8CthH3PAr/+v62O7p4TQZ7OZet7dB22FDpTybCngC/vjS0sj4fGXFYnLf1x+zAOm09y26LrVw6phb4nlt/qDgvjAlSTDiTZHnphnwWpBNwARtg8LAln1DiPJlAsGRY2YfJKubUTYfcNFTO0E3m7zstQN5Av70BWdyCrpbhl1Zb+UrVHo2IuNldT9ZknBF+9v11FpRBMyfOvV4sJsCUZ1KkUvPxtYaKuMYgYeD9ny62I5J52ZSzY1mAuyi26mU3Dt7op8UD5Zur06BZ53pDqFA3DdTshV1vhxz9xZCXJdj/dRdJEzC4dNb66sURrAudx/TpY5v2UYz+a+xkhHtx3ehcJcT7mfxbCGHM1uKBWFrg+XRa2iGtLMl892dtJldloDD6WfRWv+GjV0qPCR
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(376014)(366016)(3023799007)(38070700021)(11063799006)(22082099003)(56012099003)(4143699003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Um9TSnNWcTcrZ29UZzhuVVZxZHpvQ01pMDJwV25NdHg0OEJtNGI2MW1YNlR3?=
 =?utf-8?B?Y2d2eUEydjVsaWgxd0xJYVArZDE4REpLaFhwV3JTQXoyZzI3cE01enRzRmpx?=
 =?utf-8?B?OUZ5bFNrSzRjNXNQTkZNOTlEYjUvdk8va3pvckxHYnVlLzBGQXV6d1h2ZlRE?=
 =?utf-8?B?WU1qckg0RHRPbVlLQVpzSnE0VjBjalI4TkYreWxYM1lkN1o2UU5qY2VvT2dl?=
 =?utf-8?B?NjZEZDEzN3VLc2YydE5CWUpUK2NheUo3dUhTUTZnWWI4REpWOU8wWFBUSkEr?=
 =?utf-8?B?U3UzRHRVUmFLVlpQUXRtejFaYnNMdFJCZ2NyeG1CZGsxM29XMlhsU2hldlFv?=
 =?utf-8?B?QWtNSWo3Tk5PMHVXSDFjaWJLVVpXL2J6Und5NlhsZlNreEN6TmRCL0lOZXFu?=
 =?utf-8?B?V2FMV1cwN1JCVHFmSFE3TXJ6QkxDVmVsMUs1T2paR0NORzBHVHNyYjRUZExx?=
 =?utf-8?B?bEF5ZGdiRWpMRmhIdUdReHdOeWFtOVl5cXRJeTByenVMTnRtbmxaQjUvTEhS?=
 =?utf-8?B?WHMzNlJqMUhBNWRWV2x2SldJYjJnWXYvelppNWFmakpSZ1hkbHlXMkhkRjl4?=
 =?utf-8?B?OWdXd3JqK1JGa3NoajNRUDBpQnY4SllxY0lDRnhNM0FiTWQvaUFISFg4ZzBx?=
 =?utf-8?B?UmdOdWljZW5NdnZUekR5QW9wS1E0K0dXV1ZQQ2dnWS9LSklySHpJUHdEM3Bk?=
 =?utf-8?B?NG5FckszNFNoVlVWYnp1OVdiaVFwRUoyN3QzSDZuU2xad3IzY1JRZmRMOURW?=
 =?utf-8?B?b3pDUml3bkR5YlkraGFVUkJFems3R1Iyb0JXelQxRmlDU3BZeExmRE5oTmlJ?=
 =?utf-8?B?ejZ2V2NGRm5CT0hZdVNacDFHSHdlZjNpUFh5VG90aWVWVXkvSUt3R2trbXdn?=
 =?utf-8?B?TjBkV09hWDNQNC9aQ3U5S2Vqakg1Y0NrR2FEQ2lFMDFZalJtNWdVQUd2cTEr?=
 =?utf-8?B?UnVCektuNG9OdU9EOFBmM0lQRHAzY1F0VjVkYmh6MFBkeWQ0b1EyTlB0ZzRS?=
 =?utf-8?B?ODJQNFQwZVhWeUE2c0lZWDNYU2FMN0Q5andWZzE5MytsWlYyZFMrbjFWTWVM?=
 =?utf-8?B?NVh2UkV4TnJVNGU1RG5XRVBoVEVHaDB1NEtyN0NzUjZLcE1OUmNOTG1NalR4?=
 =?utf-8?B?aHJvbG45R3JTSGpOU0JHaktveWxNL0g5NHUrbDdmbkl3NzNpbnE5enQ0SW1S?=
 =?utf-8?B?c2tMQjg5VnZLM1FrYWJIWGhKd28rK2Z3NzlyNSszYVMwb1VuR2pLTllaMkRL?=
 =?utf-8?B?UWNYdnFCUmkvbzBwSjNNbUh3UGxBZkpyYXYremUwN1hXak5qY3dnNGdkYS9K?=
 =?utf-8?B?My84UDhYYU5TTkR5MFZiS2YyUjZVUGpBMFpYMzVCRkFHRjRLTzlPUXpPRDc1?=
 =?utf-8?B?M3BEQVVPRm04RU9Vb080UXRjV0FRZTZxZUprZ0NndE1OWFFRSkIzYjRXdi9B?=
 =?utf-8?B?b0s3QmhaREZMU01iR0RvR1hPNmZGdDA1RUFmQXZrc01KeGE5eEEyeCtUZ0dU?=
 =?utf-8?B?b0Z6WmJwd0FzZ3pBdmZZZW9pRC9vQWh6bDJYb0ZFZlg2ZWNCRHRMRzJGSnRC?=
 =?utf-8?B?bmZPcXgyMzlXZnY0Y0tXK1dXRDdXOFptblgxME9peG5TWDJGUFVtbzNYK1o4?=
 =?utf-8?B?VlNuZ0NrS1R5YWszNEdBdmhUbW1TZU92ODVlZG9TSUFPeXF3a2RrL3pZWTlG?=
 =?utf-8?B?YkRqbVdTOFpxNEhkdzYxM0ozN09aQTRPd3JkUVk1OFpGU0NuWEYvdmdtTHNP?=
 =?utf-8?B?amh5alpCSEl0RXdvMUphcm43ZVdzT25SMEFmSncvWFJOTDErbVdmVXFiSVRs?=
 =?utf-8?B?Z3VEdXpmeHZWVzhNUEEwTWtTemJNVHdjQXV4cVMrRU80bWhmeVJTQys5T1No?=
 =?utf-8?B?emU1SHUrc0JjcHRlYk5QNHhkWi91RjBldkkzeGtOU3p1Vk52bEpzVXl0a1BV?=
 =?utf-8?B?c2daMXNscHB4NnJXRHdsZDhwdTZheDhHZk4wOHlRdmNlSm96QUNmcUpxVmhS?=
 =?utf-8?B?aDZEajk0OTFyVnhjQnI5NG05WkVmU3B3YzhtTW5kQ3dLZWd3VGxQNnRaNUZ3?=
 =?utf-8?B?TzNPQUJkMTNDMnBPNjRHSk55UnY0QXhORDBXSXM2SnJ0NzNncGFDTHhvUE9w?=
 =?utf-8?B?dVNnSXE3bkR6bDQvR3RoN2FDRTFJaFF0MTFHVHRNcjY1bjZ3ZFBvTkhLNTA2?=
 =?utf-8?B?TXRQV3NEWW5ZSGZ6bG5sVExHbnNhTkljSDBLZ2QzZVN4TE9UWWZoMWlxMlFT?=
 =?utf-8?B?QWp6VzNqNnBEVnZaWjVhMHZKWU0rWnpCbitrTkJtS3MybWRyeGRrTUVFMmc3?=
 =?utf-8?B?RlVwOFlYT0pLUHJxekp4YmJoY3Z3TENqTGdSOWk3S2hzSFVOUTgrUDZncmdy?=
 =?utf-8?Q?N5h0aYpHBLaKh4p3R6Ljv441l+9PGwxWfOjl9ObumPolF?=
x-ms-exchange-antispam-messagedata-1: LSa/qsfzc2U0LEe28+SgvldBG9nKsHC5BOA=
Content-Type: text/plain; charset="utf-8"
Content-ID: <1EA50FDBC66227439D34556EF8C01E4D@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: CL57Yj8y/2FJsjKqrkXCX1HbvdxoNGJDGrSoV1d9nvYOsCYsiZsDmdqETEUAdS2nUmH7KMzel+0B72IRpATwlI9EbL28KLRVlL2202Wgh4CbZiEJa2KsqVjDhE5g1xRipuRCnkRIu2ZJSqVJt56mq9RYsyoluAAfmPAWKO1GT2RgoetV/NKeNsArXdj0O6NXMt68MsojbXNvcKZneT37dJzj4nJjyNO3ArPasMRL2vrKFlYeRoikCs9cAf0CF65nQs90rE5i2OEM6zHdAH8KdsfEFaAn7HMlK9NcqAv33iIb64YdXGtZl7asUON0TNGRjId6UBAskXsDEutIhgBxUQ==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8eccc4f2-41c2-40c3-34a9-08deb7be7ff7
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 04:56:35.0917 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tRJupi9rI7zxtKcmpdyed6yRsS8sPCPuxwB8jjIsD62hFRqgN3At6Gn0wcZvgIxMmlofXqLwqjb3NQQahfkpN9fgR+0aG9LutLwYXRItbtw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA4PR11MB8890
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 2EBC15AED28
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gU3VuLCAyMDI2LTA1LTE3IGF0IDE5OjU3ICswNTMwLCBBbmtpdCBOYXV0aXlhbCB3cm90ZToN
Cj4gJ25lZWRzX3NlbF91cGRhdGUnIGlzIGNvbW1vbiBmb3IgYm90aCBkaXNwbGF5IHZlcnNpb24g
YnJhbmNoZXMsIHNvDQo+IGNoZWNrIGl0DQo+IG9uY2UgYW5kIGtlZXAgdGhlIHZlcnNpb24gc3Bl
Y2lmaWMgY2hlY2tzIGFzIHNlcGFyYXRlIGVhcmx5IHJldHVybnMuDQo+IA0KPiB2MjogU3BsaXQg
aW50byBzZXBhcmF0ZSBlYXJseSByZXR1cm5zLiAoSmFuaSkNCj4gDQo+IFNpZ25lZC1vZmYtYnk6
IEFua2l0IE5hdXRpeWFsIDxhbmtpdC5rLm5hdXRpeWFsQGludGVsLmNvbT4NCg0KUmV2aWV3ZWQt
Ynk6IEpvdW5pIEjDtmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KDQo+IC0tLQ0K
PiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMgfCAxNyArKysrKysr
KysrLS0tLS0tLQ0KPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMCBpbnNlcnRpb25zKCspLCA3IGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfcHNyLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5j
DQo+IGluZGV4IDU0NmNlOTg0Njg2NS4uZjZjZDg4OTAyYmU5IDEwMDY0NA0KPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gQEAgLTE0NzcsMTUgKzE0NzcsMTggQEAg
aW50IF9pbnRlbF9wc3JfbWluX3NldF9jb250ZXh0X2xhdGVuY3koY29uc3QNCj4gc3RydWN0IGlu
dGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUNCj4gwqAJICogU1JEX1NUQVRVUyBpcyB1c2VkIGJ5
IFBTUjEgYW5kIFBhbmVsIFJlcGxheSBEUCBvbg0KPiBMdW5hckxha2UuDQo+IMKgCSAqLw0KPiDC
oA0KPiAtCWlmIChESVNQTEFZX1ZFUihkaXNwbGF5KSA+PSAzMCAmJiAobmVlZHNfcGFuZWxfcmVw
bGF5IHx8DQo+IC0JCQkJCcKgwqAgbmVlZHNfc2VsX3VwZGF0ZSkpDQo+ICsJaWYgKG5lZWRzX3Nl
bF91cGRhdGUpDQo+IMKgCQlyZXR1cm4gMDsNCj4gLQllbHNlIGlmIChESVNQTEFZX1ZFUihkaXNw
bGF5KSA8IDMwICYmIChuZWVkc19zZWxfdXBkYXRlIHx8DQo+IC0JCQkJCcKgwqDCoMKgwqDCoA0K
PiBpbnRlbF9jcnRjX2hhc190eXBlKGNydGNfc3RhdGUsDQo+IC0JCQkJCQkJCcKgwqANCj4gSU5U
RUxfT1VUUFVUX0VEUCkpKQ0KPiArDQo+ICsJaWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpIDwgMzAg
JiYNCj4gKwnCoMKgwqAgaW50ZWxfY3J0Y19oYXNfdHlwZShjcnRjX3N0YXRlLCBJTlRFTF9PVVRQ
VVRfRURQKSkNCj4gwqAJCXJldHVybiAwOw0KPiAtCWVsc2UNCj4gLQkJcmV0dXJuIDE7DQo+ICsN
Cj4gKwlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMzAgJiYNCj4gKwnCoMKgwqAgbmVlZHNf
cGFuZWxfcmVwbGF5KQ0KPiArCQlyZXR1cm4gMDsNCj4gKw0KPiArCXJldHVybiAxOw0KPiDCoH0N
Cj4gwqANCj4gwqBzdGF0aWMgYm9vbCBfd2FrZV9saW5lc19maXRfaW50b192YmxhbmsoY29uc3Qg
c3RydWN0DQo+IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQoNCg==
