Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AE207B1E355
	for <lists+intel-gfx@lfdr.de>; Fri,  8 Aug 2025 09:32:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E1ABC10E4D4;
	Fri,  8 Aug 2025 07:32:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="P50ZbVB9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DE50B10E4D4;
 Fri,  8 Aug 2025 07:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1754638354; x=1786174354;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=bJ+Jqfc/GZzNVyVpe4FXS1ON6wlOb8ZjAowUVPqUdbs=;
 b=P50ZbVB9WlsUHbsySlrY/UTRtLpQxNFbIxCl48sW5ebuCn3zn8ArmiOW
 Ua0/U1RYmxH0p8HKCcRZp7QmYaDBxlWZsfCMu5S8tEse2/7Hc4jgxkJcM
 7cUTzLh5VBDrQmL1IzjnicDYyXgzzDFlGzTlsoY3/VaPELYxyr8j6uG78
 V0qR2h+C8Fx18xRfBxmKi84eYfgBuQd1R1hyEHxvxrmJpQRni+Ni1HmZU
 eeDwBkWD7LVEMivoRXWwzdS0xg7i6fSJ/Xw0/zmlVrkl4ed/BjC4kZ6hI
 mQkDJnFOJTtZdKrB8xmTehsJLxEkAZQx3Bg2aG98COaBCS3eK82nrj4Go A==;
X-CSE-ConnectionGUID: dVp2HwLsR1Sk30jZ/fM+fQ==
X-CSE-MsgGUID: d8e900hNQt+5uU1Z5ASeeg==
X-IronPort-AV: E=McAfee;i="6800,10657,11514"; a="67682326"
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="67682326"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:32:33 -0700
X-CSE-ConnectionGUID: OJ3aSmVGRzO+Q5q8Mg+TUg==
X-CSE-MsgGUID: 8yhxxPqpTaiOkdUyMRS4Ww==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,274,1747724400"; d="scan'208";a="165285027"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Aug 2025 00:32:31 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 00:32:30 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26 via Frontend Transport; Fri, 8 Aug 2025 00:32:30 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.55) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1748.26; Fri, 8 Aug 2025 00:32:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=pYfduPDipUpqdXYx8ghluNJMkN+f2j2JKiOqEbKYgKTxBS9VvhONGP8T8eOJvYh+4pZTQ9giajvY41ByUwjUljyHMWAP7zgdebXjksc55gEjw3ujcy0tAQrSUVlFG7oWyHxRef4q4iDG9jLLHIeWIAhQphDvGux5Dn7kzRw4KEPCGzZRH+kQbVnuZOsYeaHWmu2iBuPX7YAzmUXBbVck98hPxIp/0xFn2nGEdKYYQjCtzR3lG2pP/ZfVuMVmQsQd/uwqDJtbA49oEeo56k0CqopO0t/eg0G3IkMjtNlTpfBsfsR9oHVLrMLpcRJt1dxOLY+lxFI8QWP0Ir5/7yAhow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=bJ+Jqfc/GZzNVyVpe4FXS1ON6wlOb8ZjAowUVPqUdbs=;
 b=a326OtQ0gHpKqbfWVCDsakQG8Fnm7STPU0nsxM+kr2iIQpFeTDOptCkCprPl2kpdGCM8usO5iqhXKNVVLPcUmHCj+5WrfXceYpHL5zrU6YVMe7OLbud8RDmrpL+5RfCnjaV6YJzGHFU0SOR1s4uaGupt/8h/LSElZVlTkqDgwXNSjwxwRjxfQ11xeAxa+OGfj1l20P1EcqJ6szcIZw46543QtZbWgS/g9MI25Q4h1LYdcxa5vXO7PrrRzslUPCezgLO+zN3uzLa4tMqZm5SpcCFeAYIgsKyoyqz7eLwrkEIsZTfjXTtpwY8XKHudixa/I2gw6ZdtkDjfjAx6RPGGDA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 (2603:10b6:f:fc02::28) by CY5PR11MB6462.namprd11.prod.outlook.com
 (2603:10b6:930:32::10) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9009.14; Fri, 8 Aug
 2025 07:32:28 +0000
Received: from DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36]) by DS4PPF69154114F.namprd11.prod.outlook.com
 ([fe80::b3a6:f19a:9bce:ba36%7]) with mapi id 15.20.9009.017; Fri, 8 Aug 2025
 07:32:28 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Deak, Imre" <imre.deak@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH 14/19] drm/i915/tc: Unify the way to get the max lane
 count value on MTL+
Thread-Topic: [PATCH 14/19] drm/i915/tc: Unify the way to get the max lane
 count value on MTL+
Thread-Index: AQHcBd1nyphZuAp3pUmf/Jq+seXoMLRYYVkg
Date: Fri, 8 Aug 2025 07:32:28 +0000
Message-ID: <DS4PPF69154114F799CD0880D8F2AC0F89CEF2FA@DS4PPF69154114F.namprd11.prod.outlook.com>
References: <20250805073700.642107-1-imre.deak@intel.com>
 <20250805073700.642107-15-imre.deak@intel.com>
In-Reply-To: <20250805073700.642107-15-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS4PPF69154114F:EE_|CY5PR11MB6462:EE_
x-ms-office365-filtering-correlation-id: 1cfe3da8-026e-4e1c-0da3-08ddd64dba48
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?ODJnbDlUQVdIZzFhZXBHVldKSVJRWERhVGxMQnN3emIxSnRzZ1JCWWhFYjZ2?=
 =?utf-8?B?bVVxV1Q2anJUQzQwb2tGTmhLamg1QmtCK1hyZUk5eGJTUzMrVytFTFJObjNB?=
 =?utf-8?B?M05mblZsc0ZOTGRZYm9MMGRQUkFmRXB2TFpqc0JTTGFYVGYzQkZpZEtwWHlI?=
 =?utf-8?B?eEEvWHV0TUgzSjRMOVJ6MTd6cW9XaUQvOGJQQlRNLyt5Ym5VVmJVUzdOY0Fo?=
 =?utf-8?B?QXB1eUdzRk53OFlYTHQ4VldNK1FLdUZ3RnEvbWF6V0phM2FWUmhUbWNObWtn?=
 =?utf-8?B?TExzNkx4YWZ3WE9tV1d3Qk43NEJjbWlUenh3eWtVYXN5Qk5wMGkwejZ0N1Qx?=
 =?utf-8?B?RHM2TDFUMm9UdmNrdmlNaHdzZWQvZGhMVGZVK2FzRy9DWU5pT1IvV3F1eHlD?=
 =?utf-8?B?Y0lrS3QzR3EyemdYY3ZuRmFSbVYwQkxZTlRUeEIzUEgycWNSRVFUK2ZZb0F6?=
 =?utf-8?B?TEJzMFdjVTNkZnlhaU41c1Z2N2RqMDJFWWpiUlljMU04SWwvM29uNmZPN1la?=
 =?utf-8?B?Y3VpdjlXYXZ1U2VPd0E2azg5N1B6aHJVdENCWjM3S1U3SkZJOGNRVW9zdWwv?=
 =?utf-8?B?dlFSY0QxMXBHWnZVV3FvVldnSk1RZy8yei9ZbGt3Q1l5SlJMVUZHaDkrYUE2?=
 =?utf-8?B?Q09NVml4Wm5CTmJBTmN5WWVEMWdUTHJzZXFZY05MSUZIaVRha21pem40TGZj?=
 =?utf-8?B?TEUzQlltQXBDcVM3RldISXNHNHlOVWJOV1BlcThlNGxjZGtBcnplcENLVGFY?=
 =?utf-8?B?MGovcjg5Z3R6aGJoTlZKZGFpbkZPYkNLc1pyaDVNUUZ1cTZ5RFZwOWhBRmxP?=
 =?utf-8?B?YmEzcHVsL1dUbUoxZ0ppVWZQOXVXRVZhOEhXdC9LK3NsZWRFRHIrZk1jTWla?=
 =?utf-8?B?bWd1OGd3UjVpanc5K2E1bnNlOXJpTEpxWVdWTGdoM3QzQ0NiRlRzTU5TL0Ni?=
 =?utf-8?B?TkJkZHZpelkwQnVFQmtLRE1wRE1LbVZjTytOZGhWRmFGSmJ2RHhaanYzZ3c2?=
 =?utf-8?B?dEN5djQyWktJL1U4VDRxamo2TE1zOE5lY2Y4MDJqb3B6OXE0YVFQVVJWVTBo?=
 =?utf-8?B?OVpiVUtMcUpOWllpbFMwVXVXWHRrc2dtV0h1Vk5oM0V3eG0reTd5Zk5rNTVR?=
 =?utf-8?B?ek9oL2VYcTh1dTM1bFZONzE2N0c1VTNrMHBQZkVWeTdxV3ZoV1VVdDVwdzBy?=
 =?utf-8?B?VmFYS0J5azNhQXBObkZyS3kzT0krTXV4Mjc1YWUwNEIwbWlMeE1BNVIwQzVV?=
 =?utf-8?B?YmVqV0FtVHV2cldwTTFzTDgvekxFSldXSWhVZDB2b3Z3WXVSMjVuMS93VHZF?=
 =?utf-8?B?emlxZTBieEp4dWlhejdGVVhUOGxTOXg4Tlh1SE15OW9XQ3V4UjVlZGlmdkdW?=
 =?utf-8?B?QTNRVDhRWTk4cWpvZ2VqNXhKZDBHUHliTzR2TFRENlhiVlRaNzB6UFpPKzdF?=
 =?utf-8?B?MFpBYWx1Vm1FamxUZFNnejBvU3AxWlBWSUZ4blM0aGh0V0JhZzhWa0pRdmRB?=
 =?utf-8?B?Q3FSanM0OThDUEdpTXdvM2I4TmZoTkJzVkpWckVqbTZoZ0RiMkRtVVdGaHc0?=
 =?utf-8?B?WjlPSThFY0p6UHJ0ZjZzSWFER1lSditIUDk5WlFSWUtLanJEN2FYSklYWDdx?=
 =?utf-8?B?V1FNWkl3MllxbEtvTjZtekh4RGRNbnNIaWZTQnFTMjRxOVhFVFR1MVpPVFBv?=
 =?utf-8?B?ZzhSd1hhY0hIcGhpZzhiSFRvcWtSek5CeDlJRWZKZVdLeUFibGZoRHM0ZWNr?=
 =?utf-8?B?Z3ZSQVRTbVhYZE1Yb3BLbWw2cDVIU0NDU213dkxpbE5FY3ptbDNpMm91WFNO?=
 =?utf-8?B?bGRKVTdicUIzNEhTczN2UEp5Q3dzSjRVdDBwaDZ6NkJheFZNZTk0czlNOG9S?=
 =?utf-8?B?enZsZXY0V2lCU0RJWk5ZdVI5SnNQL1dCQzFPbVZLZVRKblhEOW1STWJ1ZXlO?=
 =?utf-8?B?WkF4NDVISDFaSk9weGFJVXRWWjhTMkNrS1hqR0RZUEJYNW9FbkhlL2pLS3Y5?=
 =?utf-8?Q?YybWz4eJmB5fdHxLUK+BGtfUnD9Omg=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS4PPF69154114F.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?dlhQVjNlSFd4dDdLSlhHNjNWMW1lZlhHWDZHMWY4VnA1ckREb3hZT3hucXlG?=
 =?utf-8?B?RWtUR1BJR2EzTnNxL1JRQ2dnTHlYMU1ZeDE4Uml4MXpnWnRzMnlqRnJpLzZY?=
 =?utf-8?B?dmxPVkFEWnlGUUh5S2FabzZKMEhIUXNzemdkRC9pZkxmYUE4emtzQVB4My9u?=
 =?utf-8?B?UHp5dU93eFdMUDFqM01DN1RNbmt0V3IvM1kraENRVDNRZ3NHdnNCaFdLcHVt?=
 =?utf-8?B?M1V3V0hzMzVCaHJRQ2IxaXhTS3RxVzVHRzJyRG81UUN1Mi9yWWkzSkg2VGx3?=
 =?utf-8?B?YmV0WjZxYXRxRDVkK2J5d1dxeEFoalRpUUpwd1FYZFdwMGI2YXNsUmJsUGNB?=
 =?utf-8?B?aHIxR2hESmhUdDB6MEJDREhjcENpVSszZUxFMWJ4OGZBY3dUbTkvb3BIbGR1?=
 =?utf-8?B?TUg5UUp0M0cwS29HQXlsVW9YVGlKamdZZ1RqQ0o5SGs3RUxiM2E0eENPaFVW?=
 =?utf-8?B?RWFoRGFKTURESkFZTE1GaUdsaThvZ2p6R3RDMlhoalVFUm9Xa3hRRzhiWHll?=
 =?utf-8?B?WGR2bFFBK2pzTHNLTkNRZjFYNVdJZEFPYU94RFE5MHZTTE1oN1hTUmRLQmxz?=
 =?utf-8?B?YVJvL2FXRDF0cy9xVWlFUWN6QU1kMGtjZ01EVG05RG5vV1cwTFRjanh4dEpW?=
 =?utf-8?B?T3UyUVd6R1o4QUZFQUhQSWJQZmNJUmNHM0k3M1I3ZXY0aUZMSkY0azlORlpM?=
 =?utf-8?B?L2p1TDEyZTBPYXhCLzFuamE3SzBjU1FaNXNGazZoMTRSUzZJcm4zZTZRT29y?=
 =?utf-8?B?SlNsMTN5N05MZ2xxN3YrbFRzVEk5a3M0R2FJdW10ckNkaVJVek5oK0JkNUFL?=
 =?utf-8?B?Tk45T0pEM0g3SXc1SDkrUzNudzMvT0tMK2Rxb1ZCVHpmR1F3cEtCTDQ4NzFX?=
 =?utf-8?B?aW5aTGYyRjAvNzE4M3VRRUozaVlQYlV6c1AwYlRwVHZaamRWSm1FQ1VQSHV1?=
 =?utf-8?B?dkpwMzQzVVErOHI2NGp0NXV3K1ZmTCtSTC81M0xac3EvcFVQaXIzcXdMNDJL?=
 =?utf-8?B?NE9Rb3ZrbCtVd2Y3NXB0Y1BsbzhieHF1cnMzSGR4ZThVYlU3cHUvelgwWUpa?=
 =?utf-8?B?QlFTR3NLTkdrWkNGOWpFazBYSTZoS1ZiQjhjNEVOTC9Fa1h3SG9CSmx5WmU1?=
 =?utf-8?B?TUM1ZDBkSVE3L2tEcElEUXhPNnZQU0FjaDB1cjdlejgvTkZNcGdDWUtrUlhn?=
 =?utf-8?B?VWZwSjhLVTdybjgwNFpBMmY4emVDUU93Ti9peHV2R25MY0ZoSVZlM2N3S0Nt?=
 =?utf-8?B?dm1vVlI2TXU1ZVpFR1UrazJtOHA0bFlSY0dNb2NHa0lRdzAxU1pKVlZ1Uk9P?=
 =?utf-8?B?SSs1dlRrT2tZb0F2aVRmejJjTEtxT1J6ZEYyd3NicFB6TmJBSFZDSmZBMkRI?=
 =?utf-8?B?aGtRaGFxWUZ5Nkk0bUNEakZ0U2FwdmJIcWdNR2hRVDhRcHkzNzVqanpxMDQ5?=
 =?utf-8?B?bnplQ3ZFaFFWM2pGd3k3bVBCVVVSUy9wUnllRUJHWmFFUkRhTVh6SThLVVJu?=
 =?utf-8?B?RXMwc0hPQ3pSNzZ1d1BxYURZM0VlWTFrZ0Z5b1gySllmWDdhLzNJMEJ2Q2g4?=
 =?utf-8?B?ekNnd0o4VTN1V2VxcDlVYzFna2wzOHFtT2NZU2MyWFQ1MWtVekh3bVRrc1BJ?=
 =?utf-8?B?cWpZU0NzN3VmNzZ5b3kzWDI4bSs3Y1k0MlJFcm9EVVdBRkZTcHRLbmY3VGVG?=
 =?utf-8?B?bHYvNlNkVDdLWXdDM0RzNUppcnp1MkhHWXVSb2VLOC83TGcwUlV6RjZ2NlVK?=
 =?utf-8?B?V0lvZHJLYjFIcTFZcVI3cXVKNVdVQnlPUnh1OEhWZi9VOVhtaS9JWG9RQ0ds?=
 =?utf-8?B?Mk9QMk9pZ2ZmQ1ZCbjVscFJQd2lNNlRHelFZZXp6SSt0TjBsMC9UUEVQbjUr?=
 =?utf-8?B?ckllbzQ1RzMyUGhoWUFvWnlraElXb0hZRjZDOEpiQndGY1pZTmJ2cjV6ZFMz?=
 =?utf-8?B?TjNMZVJsbzdLTEdlMG1JZzJiWTVhYmo2eHZoTGM1ajFRVnlWV2hLYWtOcWo2?=
 =?utf-8?B?bXcyR0t0NXEvU2NtTEQxR001LzlwVVFlRFlhVW9Bem5oalFwWFhlVWVVeit3?=
 =?utf-8?B?NUxvaXMrQWtEMjE1WkhvblRWK3NjdllSQ1ZTV0hKTDRtYUYrVys0Si8zK0lV?=
 =?utf-8?Q?16dmJmJLiFw+MYJ8/7TXMztyb?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS4PPF69154114F.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cfe3da8-026e-4e1c-0da3-08ddd64dba48
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Aug 2025 07:32:28.2227 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tqhSP8T/uqmU4ysklfaut8fngnmJx0xnIq317GQf2gwqWztNkQIJK/h/4HHy2AKjCLmhBTlPl7yTRtu8XStkmg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY5PR11MB6462
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
Ym91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBJbXJlIERlYWsNCj4g
U2VudDogVHVlc2RheSwgNSBBdWd1c3QgMjAyNSAxMC4zNw0KPiBUbzogaW50ZWwtZ2Z4QGxpc3Rz
LmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwteGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1Ympl
Y3Q6IFtQQVRDSCAxNC8xOV0gZHJtL2k5MTUvdGM6IFVuaWZ5IHRoZSB3YXkgdG8gZ2V0IHRoZSBt
YXggbGFuZSBjb3VudCB2YWx1ZSBvbiBNVEwrDQo+IA0KPiBVbmlmeSB0aGUgd2F5IHRvIGdldCB0
aGUgbWF4IGxhbmUgY291bnQgdmFsdWUgb24gYWxsIE1UTCsgcGxhdGZvcm1zLCByZWR1Y2luZyB0
aGUgY29kZSBkdXBsaWNhdGlvbi4NCj4gDQoNClJldmlld2VkLWJ5OiBNaWthIEthaG9sYSA8bWlr
YS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEltcmUgRGVhayA8aW1yZS5k
ZWFrQGludGVsLmNvbT4NCj4gLS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX3RjLmMgfCAyNCAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4gIDEgZmlsZSBjaGFuZ2Vk
LCAyNCBkZWxldGlvbnMoLSkNCj4gDQo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkx
NS9kaXNwbGF5L2ludGVsX3RjLmMgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X3RjLmMNCj4gaW5kZXggNWIwNDRlY2U4MTVkZi4uNzdjNWEzNzQ1MGEyNiAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF90Yy5jDQo+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfdGMuYw0KPiBAQCAtMzIyLDI3ICszMjIsNiBA
QCBnZXRfcGluX2Fzc2lnbm1lbnQoc3RydWN0IGludGVsX3RjX3BvcnQgKnRjKQ0KPiAgCXJldHVy
biBwaW5fYXNzaWdubWVudDsNCj4gIH0NCj4gDQo+IC1zdGF0aWMgaW50IGxubF90Y19wb3J0X2dl
dF9tYXhfbGFuZV9jb3VudChzdHJ1Y3QgaW50ZWxfZGlnaXRhbF9wb3J0ICpkaWdfcG9ydCkgLXsN
Cj4gLQlzdHJ1Y3QgaW50ZWxfdGNfcG9ydCAqdGMgPSB0b190Y19wb3J0KGRpZ19wb3J0KTsNCj4g
LQllbnVtIGludGVsX3RjX3Bpbl9hc3NpZ25tZW50IHBpbl9hc3NpZ25tZW50Ow0KPiAtDQo+IC0J
cGluX2Fzc2lnbm1lbnQgPSBnZXRfcGluX2Fzc2lnbm1lbnQodGMpOw0KPiAtDQo+IC0Jc3dpdGNo
IChwaW5fYXNzaWdubWVudCkgew0KPiAtCWNhc2UgSU5URUxfVENfUElOX0FTU0lHTk1FTlRfTk9O
RToNCj4gLQkJcmV0dXJuIDA7DQo+IC0JZGVmYXVsdDoNCj4gLQkJTUlTU0lOR19DQVNFKHBpbl9h
c3NpZ25tZW50KTsNCj4gLQkJZmFsbHRocm91Z2g7DQo+IC0JY2FzZSBJTlRFTF9UQ19QSU5fQVNT
SUdOTUVOVF9EOg0KPiAtCQlyZXR1cm4gMjsNCj4gLQljYXNlIElOVEVMX1RDX1BJTl9BU1NJR05N
RU5UX0M6DQo+IC0JY2FzZSBJTlRFTF9UQ19QSU5fQVNTSUdOTUVOVF9FOg0KPiAtCQlyZXR1cm4g
NDsNCj4gLQl9DQo+IC19DQo+IC0NCj4gIHN0YXRpYyBpbnQgbXRsX3RjX3BvcnRfZ2V0X21heF9s
YW5lX2NvdW50KHN0cnVjdCBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19wb3J0KSAgew0KPiAgCXN0
cnVjdCBpbnRlbF90Y19wb3J0ICp0YyA9IHRvX3RjX3BvcnQoZGlnX3BvcnQpOyBAQCAtMzk1LDkg
KzM3NCw2IEBAIHN0YXRpYyBpbnQgZ2V0X21heF9sYW5lX2NvdW50KHN0cnVjdCBpbnRlbF90Y19w
b3J0DQo+ICp0YykNCj4gIAlpZiAodGMtPm1vZGUgIT0gVENfUE9SVF9EUF9BTFQpDQo+ICAJCXJl
dHVybiA0Ow0KPiANCj4gLQlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMjApDQo+IC0JCXJl
dHVybiBsbmxfdGNfcG9ydF9nZXRfbWF4X2xhbmVfY291bnQoZGlnX3BvcnQpOw0KPiAtDQo+ICAJ
aWYgKERJU1BMQVlfVkVSKGRpc3BsYXkpID49IDE0KQ0KPiAgCQlyZXR1cm4gbXRsX3RjX3BvcnRf
Z2V0X21heF9sYW5lX2NvdW50KGRpZ19wb3J0KTsNCj4gDQo+IC0tDQo+IDIuNDkuMQ0KDQo=
