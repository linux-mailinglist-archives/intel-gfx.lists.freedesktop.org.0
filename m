Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CD993A634F0
	for <lists+intel-gfx@lfdr.de>; Sun, 16 Mar 2025 11:02:28 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AF96E10E121;
	Sun, 16 Mar 2025 10:02:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nG4r0rYs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BF3FE10E121;
 Sun, 16 Mar 2025 10:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742119343; x=1773655343;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=BOCl0aOL2j8nskU4MqVI72cVCDEiajreNl7NfHhd6R0=;
 b=nG4r0rYsiHTBq04xtox8ajwBFWJbpppAfrJ8fcNtEYSckDjpyWevCB5M
 nv7e0ITCfI56crdPKdIcp3mZLa7XXRh9CSFS3L4PqPhZ1dWVJlGDDWA8d
 REA+Cgag8tPMiTHy8mV7hmO4VsPlUB8AcEJ/YKa3/hd/LmRcL7e8VKYCj
 Y5Z8T/0i9QozTmRPs/oFV8j3ihGCZtCmQPLta+dq4wGiPmCOPzkIAXWvm
 tQsHD3/oHwpneUhGEDEPgdCAySq/RvyNlYcwUkx38LaLCtFODI/WiYOkm
 INT5NxIYftX2A1sDJlsY74POUyZ9P0yoqBtu/ON4Pdu9oLznDBfOmWb0n A==;
X-CSE-ConnectionGUID: BYFGgEQzTuu60UyYs9/0fw==
X-CSE-MsgGUID: 2BKjB7GDQTSwLoJeZK382A==
X-IronPort-AV: E=McAfee;i="6700,10204,11374"; a="54221688"
X-IronPort-AV: E=Sophos;i="6.14,251,1736841600"; d="scan'208";a="54221688"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2025 03:01:22 -0700
X-CSE-ConnectionGUID: 6FeYv1MXRUSZq6TWClQUCg==
X-CSE-MsgGUID: QlRKhJpgT/2autxX1oEKqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,251,1736841600"; d="scan'208";a="152561013"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2025 03:01:22 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Sun, 16 Mar 2025 03:01:21 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Sun, 16 Mar 2025 03:01:21 -0700
Received: from NAM11-DM6-obe.outbound.protection.outlook.com (104.47.57.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Sun, 16 Mar 2025 03:01:20 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Ir/n/2QT0XvFE5/gqfFqD6DWrM6QDZRqzEWZbzUXzlY9+2Y0EkJaLLizNk649aIBwD3JbZPDHhlwh8wglHM5geFinm7U3TX6IF/gpFiH/Euq729fuKUF+uYLv9tYGjTpvxTWx0siwn6PCEao0Dd5DV47IhJasjzbu0xAbfWeIG0Usaiosld62blXYN1uGR/ea8Y6i5FSN05oP/nRtrAHZWEbCUuHlOU4A5wU0SntvOayR96V14RA5LoXAoVFkN4Hpw3ZB7YrT6sM0cr8Nd2doF2f8IiwagrWZBeIwlm6yrMZveeJ0SvN4I3jUatt7qHVwdA/7jIY7TEK/eFHe3rqLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=BOCl0aOL2j8nskU4MqVI72cVCDEiajreNl7NfHhd6R0=;
 b=Fpx1gqpwDaW7hPx5Nqvo5Hw+qFI6OjysY+t5vdUHVJlzOH86BzYM3tcC5NfCJikVvrhNl6EPN/zX/UL0xHQWwXlgZsIRUpFUBjfGPuCXd+odZgU2NjbWSB2RmWeu/FDUdw8xweZtIRWJmyU2xEI7Vlcl3qixrP4arKHASvI21w3+lr0xGrfPN3F9N8C8QgOZLEI7dIeAWWIkheHTWNpGchabCXLSUQYeRDEg0AJQI8/a4P3f4BFGRwS0IGM0E++l3MNSW5zF6qXLYnuXpE7c3pewbjGYR8hqdlqglqjwS585jaP+nTo7/QgxetVdDIMGlkfJE4S6DI+5l0HZjrilDg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CY8PR11MB6913.namprd11.prod.outlook.com (2603:10b6:930:5b::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Sun, 16 Mar
 2025 10:01:04 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8511.026; Sun, 16 Mar 2025
 10:01:03 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Baolu Lu <baolu.lu@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>, "Kurmi, Suresh Kumar"
 <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani" <jani.saarinen@intel.com>,
 "De Marchi, Lucas" <lucas.demarchi@intel.com>
Subject: RE: Regression on drm-tip
Thread-Topic: Regression on drm-tip
Thread-Index: AduT81McpXbO29/8RDWHWCDCdOzGGgAMCbyAACcZwNAAVvtbgAAJ0AHwAAG08IAAA/Um8A==
Date: Sun, 16 Mar 2025 10:01:03 +0000
Message-ID: <SJ1PR11MB6129A28720CF33982397E777B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB612953431F94F18C954C4A9CB9D32@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <4951eb3c-aa2b-46cf-87bd-37b09447748d@linux.intel.com>
 <SJ1PR11MB6129AAF87542D06B7A23C0FCB9D22@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <5e6d65b6-4f9a-4d23-925c-75be7c4bd561@linux.intel.com>
 <SJ1PR11MB61299D9421F7B3DEA6424389B9DC2@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <7db3b702-51e1-4c0d-8e0a-578239247587@linux.intel.com>
In-Reply-To: <7db3b702-51e1-4c0d-8e0a-578239247587@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CY8PR11MB6913:EE_
x-ms-office365-filtering-correlation-id: 8c1a76b0-c020-450f-5a22-08dd64717680
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?RmszNXR3azByY01JR1Zwc2pQbUdCdDRNVUpCU3MxejR4ZVViZ3hDOFNXSXhN?=
 =?utf-8?B?Vzd2REk1dGh3eE42TFRMU0tiSElxTytTeUErdFlnc3kzcjVyQldZSnN3UUk2?=
 =?utf-8?B?d0NoSTR4WEYxRUluaWVUdHlrUmRJVmZlRytLb1pMSFRvWWtEUDI1NEJlQ3NN?=
 =?utf-8?B?ZVMrY1lYS1UySFpiQ1JCMWlscUJ2WWtCZ0c3Ky9KbGRKM25EU0dHS29yclgv?=
 =?utf-8?B?WmM1T2lrbjQ1bm5SVDQvWkZDYk91aXoyWmtNYUpzTVkwd3g3bXVjYitkSEI0?=
 =?utf-8?B?NyswZ3k1Vi9LVGVKaXd5RTlVMWlYMCt2Y1lOMWJWb1EyVmlFVVk4RUFhTUx6?=
 =?utf-8?B?aGpKOXVTYVNQbE9SQ0svbDR6eC9oa1pwSFo5akY3WklHQ2syZkExWGMrdWdr?=
 =?utf-8?B?N3pKQ2lRaHJJeEJGOW5hVU1kY1F1eTBncENsSnowQU9QK1VZNnZLWVloSW92?=
 =?utf-8?B?amRMVTJpell6RkxXZ24wWEFCcGVnbWV6Rlh6V080UW5CcUc0RG9GZ1gxOC9s?=
 =?utf-8?B?UnN4S2hycWpiaHRGOXMwMytkOElzTG1Ma1c2SitSc1hQbVcwRlg3Y0NjK0Qx?=
 =?utf-8?B?L09HWUF6d2xhc2U5bHVDUWFyNDdPRi9jMyt6V3N2bFFPVmhtcjJGdmc1RUwz?=
 =?utf-8?B?UlFpS1cybUpycWtjZHNCZVZsMDNVMTRGdjh0ZU16andFaExyMnhaSUN2aytC?=
 =?utf-8?B?UDRldmdUZkk5VnVjekozYkUzTnNqZFRDRzExSkM5Qk1iNklrL2xJanRmdHJL?=
 =?utf-8?B?djRrVjFGelRRLzFHOUZEV0lKaGN2azFBbDJSaFZudXpLUWYyZVA3QUpmMUJH?=
 =?utf-8?B?c2sxM0RHV2RrOThQaVl3TS91ajBiQmhCc1liMVFFZ2pCYTYxS0UzeXpwemVH?=
 =?utf-8?B?MjBWRExWUnFPZW5ta1pxZXorZDRYY0NUbjlYTGp4eVhsR0VSeHMwK2NQVjEz?=
 =?utf-8?B?bnR3VFRRdW9tZ0ZndDVSWml4S2VrNkNNUTNXclFqY2NBMEQraWYrQ3hHbUsz?=
 =?utf-8?B?Q2VRZFlzUTRGem1ncVp0Y1VxOGI2RFBFT0lhbDVleXlDNmpuY0EyaTdWRC9w?=
 =?utf-8?B?SVU5bWJCL3FBWHRCYzRBS1pydDFXYjRFTHoyYWJmalhOeGJLTWs2UFRjUHVh?=
 =?utf-8?B?Vkc0QUdyUTNpdDVRR0VIQ01RNlY5NGhBa0JjRmJXZkdFZGdwUjA2VlhOcUJ0?=
 =?utf-8?B?NG0wdW52L2g1cGozQmYwMTRORjUrTFBnMzZFeEF5RXNDakc3NE1CRXVCQmhs?=
 =?utf-8?B?Y04xRWtRQ0RqQklqSjAyWjlQNmsvb3dyTlZLeXA4enpiTzFaVnh6K3MrY1BB?=
 =?utf-8?B?MnY2UFRQb05LYWFIbzRtbGNYczYzY09KczBEZlcwMVdNc05Fb0t0ZUZ0aHBv?=
 =?utf-8?B?TmlGcnQyOEdFc2RLZXd2T3JsSm1pWjBuTEp3RFRJZlBHZEtoZjNuMnZkZUR4?=
 =?utf-8?B?Y2VtMHBpN2JNV1EyNjczTW9GUUEwaXRFTWhENXAxdnY0UGJvUWIra0UzZHNZ?=
 =?utf-8?B?WTNZR1FVTEpvdXdwaTI0L3ZMckgyVWgxMTdIVVplQnNCUnVtQ2xDQkJnTXgx?=
 =?utf-8?B?U0ZRaHpPQXM3RU5lbXAwMEJUem9YYzlGMGZ5bkU1bHRpVG5DT0RWNVVaUEZa?=
 =?utf-8?B?WlRRSlhJMHpDTFQvcWtrdW9yODYybXVPcVIzRTRxWnZUVm9hSGF2WUMzSFdz?=
 =?utf-8?B?SmpXU3ljOW5iNzF0eGtVc25OSWJza3ZJQkVWRDluWDdtN01CRlZzTW5PNnAr?=
 =?utf-8?B?VVNhL1Y3TXhvem5GVmsxLzZsR1EzSERZeHBOb1BYcDJBUFFBMEgxNE5qZXdC?=
 =?utf-8?B?Q2JaNHBDbmtwWEVDazA3YmdJVzZNMUFXMWJpUjJrNEc3WndlY2x2N1FvL0Uz?=
 =?utf-8?Q?9eo1bV5oIhfb9?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?cW1tSkFQWTlhZkJmbFFRdDFqRFlZQXF5cEdZZyt6VU4xbGNVdWpPeG5Zekxl?=
 =?utf-8?B?OHY2RktUWXhBdTVkSStjUFpPZFZnWGZNblB1SWRmZUFIVFB3eDVWNkdXMzd1?=
 =?utf-8?B?QlZiYitYV1RrOEpIYnF4c0hKMzRtaUdrRGE2eHZ6eVRPTGZwVkVYSGJoNjZ0?=
 =?utf-8?B?ZmF3THkzZWtncGhnY3lIMXhsY0hmeWM3bVN6elU5QS9qdlhWZFdNZk9kTWwz?=
 =?utf-8?B?WXF4c3NwbkpYQzRGako2V1NIQzI5WjFYWFU2WjVuOUVRYmp2R2FJSFJiK05J?=
 =?utf-8?B?VXE1bkVodjQ2ZVZla1d0Sjk4ZjRKZGh0d2VqL2szcHFkRTk0dkZUK0tnejFT?=
 =?utf-8?B?R2ZzZVZFbFlOaXVFbTUzaWRTcG4vTmRwRi9VbTRHbFBaenozejFFWTVjbEhN?=
 =?utf-8?B?SU52YUdjcmEyM2YxZkR6MFk3ekhGT0Vha0dLNXNQUkpOYmFraGN2cTlCbHE2?=
 =?utf-8?B?Ym9xZHFaU2xYU1ZOakdCOUgwSmw2enZhVnl3NWNzdGRpZzR2b0FpdXd6eG9T?=
 =?utf-8?B?SGFubHNHK0lySUl1enp4dTU4QWtLRnF2OC9wSHF3MGVWWGVpMDFJTHBvTGdE?=
 =?utf-8?B?bVZYVEphdmZFZVhBZ1NFeXBxVjVsNWVoNEZ0akFIc29DeXl1Qnl0U01HMFRQ?=
 =?utf-8?B?UHN5U1FsanFDNnN4eTFpMlNlSmpYZVBVOUdLSzZ0Um1mTEI3eUNGZHliL2Vl?=
 =?utf-8?B?SUVodXBWd25PMWN2SytyL2xSQmR3SFFNeVhubTlLR1F1NnEyd04zbVdRRjd0?=
 =?utf-8?B?bTdXKzJ4NWtqRDg3Z01FKzg2dkJIdk4zOVgrNVE3Nk52SjgzaG9IWlNzZ0d4?=
 =?utf-8?B?dzVNS0JFWjJtMitTSnFjWFlkOGp2OWdnaDRHKzZpMithNUE3Z1QrVGVoak1q?=
 =?utf-8?B?di9rU0UzTzFjai9XTzU3bUFPQUZ0ZjZRNGlGMzZRYXlLdHVrOHlnVUd1OENo?=
 =?utf-8?B?TkVZaFFnb2t6N0dQRGF1SDg1Wlp1OFEydFVLcnZJcnRaczBuREFuNVhjVm5q?=
 =?utf-8?B?cC9zUlFXb2ZYNHI2UUV1ZHdQZDRxaEdyVmNHS3hWclZMTEtUaVF0VTNoNFRB?=
 =?utf-8?B?dW9Fd20rMUowZmp4SGYvODZOZkZ4NVh2YVNwL25DM0NaL2gxOHZzQXRwMnVJ?=
 =?utf-8?B?dlAxb2Erakg5SWZabVUzdlpFem41UnR5RUxDOVJTQzhHNkJJTmFUbmtGUzJj?=
 =?utf-8?B?Q0cvSnBNS0tnVXBnS0IrVVN0WW9GOWc3SDJFYmhnZyt5cGhNM20yYXhudU9N?=
 =?utf-8?B?T2RhSnVVWGJnc0RlTWlEYnZPR0taNVkxYTdKb2szOVl1Qk1zeGY0cVBNSnEx?=
 =?utf-8?B?d2xqUWtlYWVEeXdKTXhqOXB4VEZTNG1oclpiaUpiQms5OXBOcVFyQ3Q3clJs?=
 =?utf-8?B?OEFSTnFYNzRBbzB5RnlyejNVMHdOMWdYektSQUdaV21kNDJmSUpKaFplR2Er?=
 =?utf-8?B?N3pMUFNta3J5Q2YveEx1VkpZMExzM3QvWC82TFh6SUNVcmxVWTJUS1RoK280?=
 =?utf-8?B?RWEyK0dVNjZTTjd5MkVFd3JVbkc1amNMczNUaEdta05wTzhpQWp1MU9nUjFa?=
 =?utf-8?B?a2hMVUpXTGgwM0Z1bzFxcFlrTDBRajF3QStaQlNzR2xRbDVrOE1nOW1RRWdP?=
 =?utf-8?B?N1VSWFpoME45Z3FtbGRVY0hKSG53cVhwYk5WUDVwVFhMeEdpMU1QS1dQcmdB?=
 =?utf-8?B?VFJGTWo4eGRrL3FocTFQSlZjSlBXM0RUVmJRNHd1dHhpdkowandiSmxJUUFn?=
 =?utf-8?B?VmFvMUpaRmM5YXdGTkw0UkVkNnlWeVF6djRtY3YvY3MyelplcVhqMmwvMC90?=
 =?utf-8?B?N0szdFR4bkcvTXI5ZDZhcDN6NTQ1Q25qRk9kcmNidytRMTZjekEvaEREOFNP?=
 =?utf-8?B?MGtwK0RhY0NkTWl2bFl4TUZuQUNFbjVQaEhrNytoaW9yaDIra1VYRDd6SXhY?=
 =?utf-8?B?TjdMSmsvUVo3aHZFSDJKemtWOWlpRnJ2LzhWZ2lORUF1S1NDU2F1OVhkaW96?=
 =?utf-8?B?QVFFZVJDWVgveW5wK0RnUTl1ZUN2MXg2YzlXOEdKQ0MwOTVCRVFmcDFPVWt4?=
 =?utf-8?B?QWJEWi9zbEhlalZBODVvS3J0Sk1DdE5CSGdsbmdaUXZXOVdxRHY4cVZsbDBK?=
 =?utf-8?B?b0U5S0pzUlIwdjNXYWR6Zzl6SlN1QjNjcTRZZHFKR3NNd2JhMmxtanlOa1pR?=
 =?utf-8?B?RVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8c1a76b0-c020-450f-5a22-08dd64717680
X-MS-Exchange-CrossTenant-originalarrivaltime: 16 Mar 2025 10:01:03.8586 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0K62EachHkc/bt+UrLkl5SxKl/Ez3TSVSxTMM9jGx8jGTgRffkv1Bslb8F/tUFZudWjiQB+SGb+jaP8E9hTxvG524h+BsFPM3FgpNM7j7GI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY8PR11MB6913
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQmFvbHUgTHUgPGJhb2x1
Lmx1QGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogU3VuZGF5LCBNYXJjaCAxNiwgMjAyNSAxOjMz
IFBNDQo+IFRvOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFpdGFueWEua3VtYXIuYm9yYWhA
aW50ZWwuY29tPg0KPiBDYzogaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwt
eGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOw0KPiBpb21tdUBsaXN0cy5saW51eC5kZXY7IEt1cm1p
LCBTdXJlc2ggS3VtYXINCj4gPHN1cmVzaC5rdW1hci5rdXJtaUBpbnRlbC5jb20+OyBTYWFyaW5l
biwgSmFuaSA8amFuaS5zYWFyaW5lbkBpbnRlbC5jb20+Ow0KPiBEZSBNYXJjaGksIEx1Y2FzIDxs
dWNhcy5kZW1hcmNoaUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFJlOiBSZWdyZXNzaW9uIG9uIGRy
bS10aXANCj4gDQo+IE9uIDMvMTYvMjUgMTU6MjcsIEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgd3Jv
dGU6DQo+ID4NCj4gPj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPj4gRnJvbTogQmFv
bHUgTHU8YmFvbHUubHVAbGludXguaW50ZWwuY29tPg0KPiA+PiBTZW50OiBTdW5kYXksIE1hcmNo
IDE2LCAyMDI1IDg6MDQgQU0NCj4gPj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXI8Y2hhaXRh
bnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gPj4gQ2M6aW50ZWwtZ2Z4QGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZztpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7DQo+ID4+IGlvbW11QGxp
c3RzLmxpbnV4LmRldg0KPiA+PiBTdWJqZWN0OiBSZTogUmVncmVzc2lvbiBvbiBkcm0tdGlwDQo+
ID4+DQo+ID4+IE9uIDMvMTQvMjUgMTc6MDQsIEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgd3JvdGU6
DQo+ID4+Pg0KPiA+Pj4+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4+Pj4gRnJvbTog
QmFvbHUgTHU8YmFvbHUubHVAbGludXguaW50ZWwuY29tPg0KPiA+Pj4+IFNlbnQ6IFRodXJzZGF5
LCBNYXJjaCAxMywgMjAyNSA3OjUzIFBNDQo+ID4+Pj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3Vt
YXI8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gPj4+PiBDYzpiYW9sdS5sdUBs
aW51eC5pbnRlbC5jb207aW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZzsgaW50ZWwtDQo+
ID4+Pj4geGVAbGlzdHMuZnJlZWRlc2t0b3Aub3JnO2lvbW11QGxpc3RzLmxpbnV4LmRldg0KPiA+
Pj4+IFN1YmplY3Q6IFJlOiBSZWdyZXNzaW9uIG9uIGRybS10aXANCj4gPj4+Pg0KPiA+Pj4+IE9u
IDIwMjUvMy8xMyAxNjo1MSwgQm9yYWgsIENoYWl0YW55YSBLdW1hciB3cm90ZToNCj4gPj4+Pj4g
SGVsbG8gTHUsDQo+ID4+Pj4+DQo+ID4+Pj4+IEhvcGUgeW91IGFyZSBkb2luZyB3ZWxsLiBJIGFt
IENoYWl0YW55YSBmcm9tIHRoZSBsaW51eCBncmFwaGljcw0KPiA+Pj4+PiB0ZWFtIGluDQo+ID4+
Pj4gSW50ZWwuDQo+ID4+Pj4+IFRoaXMgbWFpbCBpcyByZWdhcmRpbmcgYSByZWdyZXNzaW9uIHdl
IGFyZSBzZWVpbmcgaW4gb3VyIENJDQo+ID4+Pj4+IHJ1bnNbMV0gb24gZHJtLXRpcA0KPiA+Pj4+
IHJlcG9zaXRvcnkuDQo+ID4+Pj4+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+Pj4+PiBgYCBgYCBgYGBgYGBgYGBg
YCA8ND5bwqDCoMKgIDIuODU2NjIyXSBXQVJOSU5HOiBwb3NzaWJsZSBjaXJjdWxhcg0KPiA+Pj4+
PiBsb2NraW5nIGRlcGVuZGVuY3kgZGV0ZWN0ZWQgPDQ+W8KgwqDCoCAyLjg1NjYzMV0NCj4gPj4+
Pj4gNi4xNC4wLXJjNS1DSV9EUk1fMTYyMTctZ2M1NWVmOTBiNjlkMysgIzEgVGFpbnRlZDogR8Kg
wqDCoMKgwqDCoMKgwqDCoCBJDQo+ID4+Pj4+IDw0PlsgMi44NTY2NDJdDQo+ID4+Pj4+IC0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQ0KPiA+Pj4+
PiA8ND5bwqDCoMKgIDIuODU2NjUwXSBzd2FwcGVyLzAvMSBpcyB0cnlpbmcgdG8gYWNxdWlyZSBs
b2NrOg0KPiA+Pj4+PiA8ND5bwqDCoMKgIDIuODU2NjU3XSBmZmZmZmZmZjgzNjBlY2M4DQo+ID4+
Pj4+IChpb21tdV9wcm9iZV9kZXZpY2VfbG9jayl7Ky4rLn0tezM6M30sIGF0Og0KPiA+Pj4+PiBp
b21tdV9wcm9iZV9kZXZpY2UrMHgxZC8weDcwIDw0PlvCoMKgwqAgMi44NTY2NzldDQo+ID4+Pj4+
ICAgIMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGJ1dCB0YXNrIGlzIGFscmVh
ZHkgaG9sZGluZyBsb2NrOg0KPiA+Pj4+PiA8ND5bwqDCoMKgIDIuODU2Njg2XSBmZmZmODg4MTAy
YWI2ZmE4DQo+ID4+Pj4+ICgmZGV2aWNlLT5waHlzaWNhbF9ub2RlX2xvY2speysuKy59LXszOjN9
LCBhdDoNCj4gPj4+Pj4gaW50ZWxfaW9tbXVfaW5pdCsweGVhMS8weDEyMjANCj4gPj4+Pj4gYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgDQo+ID4+Pj4+IGBgDQo+ID4+Pj4+IGBgDQo+ID4+Pj4+IGBgYGBgYGBgYGBgDQo+ID4+
Pj4+IERldGFpbHMgbG9nIGNhbiBiZSBmb3VuZCBpbiBbMl0uDQo+ID4+Pj4+DQo+ID4+Pj4+IEFm
dGVyIGJpc2VjdGluZyB0aGUgdHJlZSwgdGhlIGZvbGxvd2luZyBwYXRjaCBbM10gc2VlbXMgdG8g
YmUgdGhlDQo+ID4+Pj4+IGZpcnN0ICJiYWQiIGNvbW1pdA0KPiA+Pj4+Pg0KPiA+Pj4+PiBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGANCj4gPj4+Pj4gYGANCj4gPj4+Pj4gYGANCj4gPj4+Pj4gYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGANCj4gPj4+Pj4gY29tbWl0IGIxNTA2NTRmNzRiZjBkZjhlNmE3OTM2
ZDVlYzUxNDAwZDllYzA2ZDgNCj4gPj4+Pj4gQXV0aG9yOiBMdUJhb2x1bWFpbHRvOmJhb2x1Lmx1
QGxpbnV4LmludGVsLmNvbQ0KPiA+Pj4+PiBEYXRlOsKgwqAgRnJpIEZlYiAyOCAxODoyNzoyNiAy
MDI1ICswODAwDQo+ID4+Pj4+DQo+ID4+Pj4+ICAgIMKgwqDCoCBpb21tdS92dC1kOiBGaXggc3Vz
cGljaW91cyBSQ1UgdXNhZ2UNCj4gPj4+Pj4NCj4gPj4+Pj4gYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+ID4+Pj4+IGBg
DQo+ID4+Pj4+IGBgDQo+ID4+Pj4+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
DQo+ID4+Pj4+DQo+ID4+Pj4+IFdlIGFsc28gdmVyaWZpZWQgdGhhdCBpZiB3ZSByZXZlcnQgdGhl
IHBhdGNoIHRoZSBpc3N1ZSBpcyBub3Qgc2Vlbi4NCj4gPj4+Pj4NCj4gPj4+Pj4gQ291bGQgeW91
IHBsZWFzZSBjaGVjayB3aHkgdGhlIHBhdGNoIGNhdXNlcyB0aGlzIHJlZ3Jlc3Npb24gYW5kDQo+
ID4+Pj4+IHByb3ZpZGUgYQ0KPiA+Pj4+IGZpeCBpZiBuZWNlc3Nhcnk/DQo+ID4+Pj4NCj4gPj4+
PiBDYW4geW91IHBsZWFzZSB0YWtlIGEgcXVpY2sgdGVzdCB0byBjaGVjayBpZiB0aGUgZm9sbG93
aW5nIGZpeCB3b3Jrcz8NCj4gPj4+Pg0KPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2lvbW11
L2ludGVsL2RtYXIuYw0KPiA+Pj4+IGIvZHJpdmVycy9pb21tdS9pbnRlbC9kbWFyLmMgaW5kZXgN
Cj4gPj4+PiBlNTQwMDkyZDY2NGQuLjA2ZGViZWFlYzY0MyAxMDA2NDQNCj4gPj4+PiAtLS0gYS9k
cml2ZXJzL2lvbW11L2ludGVsL2RtYXIuYw0KPiA+Pj4+ICsrKyBiL2RyaXZlcnMvaW9tbXUvaW50
ZWwvZG1hci5jDQo+ID4+Pj4gQEAgLTIwNTEsOCArMjA1MSwxMyBAQCBpbnQgZW5hYmxlX2RyaGRf
ZmF1bHRfaGFuZGxpbmcodW5zaWduZWQgaW50DQo+ID4+IGNwdSkNCj4gPj4+PiAgICAgICAgICAg
ICAgICAgICAgaWYgKGlvbW11LT5pcnEgfHwgaW9tbXUtPm5vZGUgIT0gY3B1X3RvX25vZGUoY3B1
KSkNCj4gPj4+PiAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb250aW51ZTsNCj4gPj4+Pg0K
PiA+Pj4+ICsgICAgICAgICAgICAgICAvKg0KPiA+Pj4+ICsgICAgICAgICAgICAgICAgKiBDYWxs
IGRtYXJfYWxsb2NfaHdpcnEoKSB3aXRoIGRtYXJfZ2xvYmFsX2xvY2sgaGVsZCwNCj4gPj4+PiAr
ICAgICAgICAgICAgICAgICogY291bGQgY2F1c2UgcG9zc2libGUgbG9jayByYWNlIGNvbmRpdGlv
bi4NCj4gPj4+PiArICAgICAgICAgICAgICAgICovDQo+ID4+Pj4gKyAgICAgICAgICAgICAgIHVw
X3JlYWQoJmRtYXJfZ2xvYmFsX2xvY2spOw0KPiA+Pj4+ICAgICAgICAgICAgICAgICAgICByZXQg
PSBkbWFyX3NldF9pbnRlcnJ1cHQoaW9tbXUpOw0KPiA+Pj4+IC0NCj4gPj4+PiArICAgICAgICAg
ICAgICAgZG93bl9yZWFkKCZkbWFyX2dsb2JhbF9sb2NrKTsNCj4gPj4+PiAgICAgICAgICAgICAg
ICAgICAgaWYgKHJldCkgew0KPiA+Pj4+ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHByX2Vy
cigiRFJIRCAlTHg6IGZhaWxlZCB0byBlbmFibGUNCj4gPj4+PiBmYXVsdCwgaW50ZXJydXB0LCBy
ZXQNCj4gPj4gJWRcbiIsDQo+ID4+Pj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICh1bnNpZ25lZCBsb25nDQo+ID4+Pj4gbG9uZylkcmhkLT5yZWdfYmFzZV9hZGRyLCByZXQpOw0K
PiA+Pj4+DQo+ID4+Pj4gVGhhbmtzLA0KPiA+Pj4+IGJhb2x1DQo+ID4+PiBXZSBzdGlsbCBzZWUg
dGhlIGlzc3VlIHdpdGggdGhpcyBjaGFuZ2UuDQo+ID4+IEkgYW0gYXR0ZW1wdGluZyB0byByZXBy
b2R1Y2UgdGhpcyBpc3N1ZSB3aXRoIG15IE1UTCBtYWNoaW5lLiBJIHB1bGxlZA0KPiA+PiB0aGUg
dGVzdCBicmFuY2ggZnJvbToNCj4gPj4NCj4gPj4gaHR0cHM6Ly9hbm9uZ2l0LmZyZWVkZXNrdG9w
Lm9yZy9naXQvZHJtLXRpcC5naXQNCj4gPj4NCj4gPj4gYW5kIGJ1aWx0IHRoZSB0ZXN0IGtlcm5l
bCBpbWFnZSB1c2luZyB0aGUgY29uZmlndXJhdGlvbiBmaWxlIGZyb206DQo+ID4+DQo+ID4+IGh0
dHBzOi8vaW50ZWwtZ2Z4LWNpLjAxLm9yZy90cmVlL2RybS10aXAvQ0lfRFJNXzE2MjE3L2tjb25m
aWcudHh0DQo+ID4+DQo+ID4+IEJ1dCBJIGRpZCBub3Qgb2JzZXJ2ZSB0aGUgbG9ja2RlcCBzcGxh
dCBtZW50aW9uZWQgYWJvdmUgYWZ0ZXIgYm9vdGluZy4NCj4gPj4NCj4gPj4gSXMgdGhlcmUgYW55
dGhpbmcgSSBtaWdodCBoYXZlIG1pc3NlZD8NCj4gPj4NCj4gPiArU3VyZXNoLCBKYW5pLCBMdWNh
cw0KPiA+DQo+ID4gV2UgYXJlIHNlZWluZyB0aGlzIG9ubHkgdGhlIHNreWthbGUgYW5kIGthYnls
YWtlIG9uIG91ciBDSSBydW5zLg0KPiANCj4gSWYgc28sIHdpbGwgYmVsb3cgY2hhbmdlIG1ha2Ug
YW55IGRpZmZlcmVuY2U/DQo+IA0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pbnRlbC9p
b21tdS5jIGIvZHJpdmVycy9pb21tdS9pbnRlbC9pb21tdS5jDQo+IGluZGV4IDg1YWE2NmVmNGQ2
MS4uZWMyZjM4NWFlMjViIDEwMDY0NA0KPiAtLS0gYS9kcml2ZXJzL2lvbW11L2ludGVsL2lvbW11
LmMNCj4gKysrIGIvZHJpdmVycy9pb21tdS9pbnRlbC9pb21tdS5jDQo+IEBAIC0zMDQ5LDYgKzMw
NDksNyBAQCBzdGF0aWMgaW50IF9faW5pdA0KPiBwcm9iZV9hY3BpX25hbWVzcGFjZV9kZXZpY2Vz
KHZvaWQpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICBpZiAoZGV2LT5idXMgIT0gJmFjcGlf
YnVzX3R5cGUpDQo+ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0K
PiANCj4gKyAgICAgICAgICAgICAgICAgICAgICAgdXBfcmVhZCgmZG1hcl9nbG9iYWxfbG9jayk7
DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICBhZGV2ID0gdG9fYWNwaV9kZXZpY2UoZGV2KTsN
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgIG11dGV4X2xvY2soJmFkZXYtPnBoeXNpY2FsX25v
ZGVfbG9jayk7DQo+ICAgICAgICAgICAgICAgICAgICAgICAgICBsaXN0X2Zvcl9lYWNoX2VudHJ5
KHBuLCBAQCAtMzA1OCw2ICszMDU5LDcgQEAgc3RhdGljIGludCBfX2luaXQNCj4gcHJvYmVfYWNw
aV9uYW1lc3BhY2VfZGV2aWNlcyh2b2lkKQ0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgIGJyZWFrOw0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgfQ0KPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgbXV0ZXhfdW5sb2NrKCZhZGV2LT5waHlzaWNhbF9ub2RlX2xv
Y2spOw0KPiArICAgICAgICAgICAgICAgICAgICAgICBkb3duX3JlYWQoJmRtYXJfZ2xvYmFsX2xv
Y2spOw0KPiANCj4gICAgICAgICAgICAgICAgICAgICAgICAgIGlmIChyZXQpDQo+ICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHJldHVybiByZXQ7DQo+IA0KDQpUaGFuayB5b3UgZm9y
IHRoZSBjaGFuZ2UuIFRoaXMgc2VlbXMgdG8gYmUgd29ya2luZy4gQ2FuIHdlIGV4cGVjdCBhIGZp
eCBwYXRjaCBzb29uPw0KDQpSZWdhcmRzDQoNCkNoYWl0YW55YQ0KDQo+IFRoYW5rcywNCj4gYmFv
bHUNCg==
