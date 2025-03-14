Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E0BFBA60CA8
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 10:04:21 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7739F10E317;
	Fri, 14 Mar 2025 09:04:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JcZUnreo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9F90C10E115;
 Fri, 14 Mar 2025 09:04:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741943058; x=1773479058;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=QLwgwky4yLv5IZpbaLIfygBwLKCOz/EfPLJ2NCC+Bws=;
 b=JcZUnreoyb3Vgar4lUDfqPfFHALW7eVEccT2JLX1GXo3v1/SRWoA1D3c
 ZUXHFerBEtSWWjwFkFF3aXH/vmpAEC2dzW25nc5t7FP0qF0MrTDhMSevq
 wNPKsbThQwQ8Gwm2imnFxiWUP2M2xzBaohtXkHteBQI+4duXbBRiZYIa1
 suNJ/5M1Ha9WnAh1HuZLSI1O6DwKTRXNay8nYM3PcT5r2ySRb/VfI8b4/
 ywi5apP0E3BGYEg+4OgGcfu8gyhP/DDUEoouiEyFhQSrIGsCzDsu1PuaI
 YHDxGxLjXdl/hCyaB1Vl81lXeHZuIjyirBIC0Lu/eXAUbpL/hGxrWPZ3y w==;
X-CSE-ConnectionGUID: La8N7V62TGOMb/As5ohyJg==
X-CSE-MsgGUID: QTYJmnUfTZOHChgRYFMIPQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11372"; a="68453934"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="68453934"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 02:04:18 -0700
X-CSE-ConnectionGUID: 2oN2JdhMSQivw3XEqm7ukA==
X-CSE-MsgGUID: lPpaAUz1TzagZp5lBZ4uIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="126274364"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Mar 2025 02:04:18 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 14 Mar 2025 02:04:17 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 02:04:17 -0700
Received: from NAM02-DM3-obe.outbound.protection.outlook.com (104.47.56.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 02:04:17 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mMmcUbu9AYwQj4298TlboAarEVbhNgbmiNjPF8yGyJoMoxt6u2jzdXUDLy9vI4nj75OGRafStKVt0jtSU4OntNUt1HqGLFXtCfJJyUrExJMiHmDdqoKcxu4O2oYtSEN8QWyZqz1L319NOMLSGnMqiBnTd1xgUiwfD4FbgFJ6cyptQr8La9fWJLqCDAfS0N12qSMjv8bYHoAHEvyfTKc6Lk6NIWZhJL9bb+MdXvigNX6XImDgcXTHnmQJoQZ09E4RZdQK4mPyS1NwT1AF10CDUBidVf8pgHQkIxsfXwzdS5UqGeOZ3aUJar8FyILFuSvGqBNu9/ttoTCYGG36XMFDRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=QLwgwky4yLv5IZpbaLIfygBwLKCOz/EfPLJ2NCC+Bws=;
 b=rRKESzyK2LNNIcbJoRgGGsBgdw0MvYa2IdL43CinXcbotj3A0776RrZUyq0yFRvTzRMRvPmSttkHp6Lj+EZnixeeMEVjJj0jYDGAxMQsarTWMBg4zPipoiBV6NrK7bh1PLe+MLP0wP0x1P7ajfi8y0tPHJEAR6gTMLDlEGgma/IoswE5s6mEKTBJ7iRzy60hKWVYF/Us/aWnaugD4/B5Tlsi2C/CmNcJc9jvyvqCNpIq7pYWR2sAPwGJmEaW86i3ZODjkdgBqp1W/6IKmymGOrqvSiti7uDaFm3L6ffvUuImdS+3u1cHBjpAJF8snSuM1oepHQPdArInfIfrz333DQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by SA1PR11MB5804.namprd11.prod.outlook.com (2603:10b6:806:237::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.28; Fri, 14 Mar
 2025 09:04:15 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8511.026; Fri, 14 Mar 2025
 09:04:15 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: Baolu Lu <baolu.lu@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "iommu@lists.linux.dev" <iommu@lists.linux.dev>
Subject: RE: Regression on drm-tip
Thread-Topic: Regression on drm-tip
Thread-Index: AduT81McpXbO29/8RDWHWCDCdOzGGgAMCbyAACcZwNA=
Date: Fri, 14 Mar 2025 09:04:15 +0000
Message-ID: <SJ1PR11MB6129AAF87542D06B7A23C0FCB9D22@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <SJ1PR11MB612953431F94F18C954C4A9CB9D32@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <4951eb3c-aa2b-46cf-87bd-37b09447748d@linux.intel.com>
In-Reply-To: <4951eb3c-aa2b-46cf-87bd-37b09447748d@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|SA1PR11MB5804:EE_
x-ms-office365-filtering-correlation-id: 09729655-b35d-42a7-55b6-08dd62d731f8
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|376014|1800799024|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?Ly9Ld1Yvb0xkWnJsUkZIR1dET3R4SmVGTkU0eDE5eU9vVkJjd2F2NmJaQnNi?=
 =?utf-8?B?dVNTR2dXdll0NXkvck5FTGJTREcrYlRYazJJZ09lN3V5UnhkeGdrckNSTnNh?=
 =?utf-8?B?a1pCUHphbitkMThteHNyRHR2Tmw3bHpFcDJoajZPT0Fua2ZLZEdIeU01WEVQ?=
 =?utf-8?B?d1ZqalpzdUVNcURlUnEyNC9mWlNNSXRwVXJyVWgxUkI3M0pJejd1RGdtYkRx?=
 =?utf-8?B?M3lvMDh1RFlIU3FGcHFVVDdnL09Nd1JpRkZWZ0FBRnRHMVBQTksyQ3JySmoy?=
 =?utf-8?B?NUI5b0t0cytEWk53anVzelVHSXVnUXdQM0llSjcxMnBwSVVGZHd4SU5rWGRV?=
 =?utf-8?B?a0piY3dHUjlZdEcwM1dENjFzZmVZdDN1ZzRNSnBtd2g4VCtRcjd0anRTU3k4?=
 =?utf-8?B?dmwxUmNFa0tYZEExdFduVi9uTGFheGpwc25mbHovRXdxZjRMa0RVRXlGOTE1?=
 =?utf-8?B?VUdsR2IreEFZRDdmbnpDc29NY0NxZXVnaXlQbVE5eW5DWmk2OVgrRytCa0lU?=
 =?utf-8?B?SVN5KzFZYk83ZWdnK3hhSmRZdVprTUZNK2xpcTNXa3o5NnZJb2tGa3ZBcUlh?=
 =?utf-8?B?SitvdXlYWjlEV1RMazVjSlZKTDVROVU2eVc2MVRuaEpVQlh6SjUyWjlBQUls?=
 =?utf-8?B?WUx4eWdZZWJCMDhTUkZNeTdZaC91Njh4ak1qZVlaTGZ4Y1FyUmdBb2UrREpR?=
 =?utf-8?B?WXZXKzAwaS96ZjdmZ2crSFlHVEU3cU1nYU9sSFpaazIra01GY0Uva0N5L2hJ?=
 =?utf-8?B?ZTFWaC8rOGRCb25EU2hRU29qblh1V3BjY1ZkQXlQdWRoRytTdUhxZ1NhR2xl?=
 =?utf-8?B?eStSRUhjOGVBYlNDZkM5MGVNTUUzb1BiQXNocDA5UzFJOTlIWDA1WXJlWDdk?=
 =?utf-8?B?ZUV2S05MbUs1NVoweTFqMFUwa3RBMnJLQnhPSE1aWmpVZkdJMnBETk1lSGNG?=
 =?utf-8?B?eTJtdlB6RThQM1RoeUEyeUorOXpDTmtUMm91a0xEZzhYalpxMXR5MkF0NFdx?=
 =?utf-8?B?UWxNSll1ajVtcEJiZEtRMEdEaCs0Vm56blpyRE01SDFCaHhuNndDR1ZnRUJX?=
 =?utf-8?B?eVd3Qm1xUWcrQTdFZExPUUYvclFLdjg0OGYvajN6MUtDMGVZOWJTZTJvSTU1?=
 =?utf-8?B?N1FWSTRCZXF4T0h0bCtjRWxMYmd5YWhnUTRWMEJ2eUJ6cHNPUDlvVUVsdXZq?=
 =?utf-8?B?YXlTNVVMWEJpcmM4bURtVXZZeEhreitzQy9rVmRvNEhTN01rQ3hTV0FwdFk0?=
 =?utf-8?B?RTZody9HNFNOL2VCS0hhallKVTJhQ0hJeTlhTUNTOXA1K3VpemNMM28xMm1J?=
 =?utf-8?B?VVNqQ2JISkpOV1N4R2Q4Z1l2azRWQ09zRUhDVXJ4azNKWUs2RHZoZDZpQjRH?=
 =?utf-8?B?UUVwU3JpOUNuMmFQTkhYN2ZEVjA4anlkWFF3anlCeGg0RUNHeUEvM1o4cUJF?=
 =?utf-8?B?TTNDV2g0cFpDUlZOTnpJcWZXTFhhbHk3LzJLY0orbTJWcU5UdCs1MG5LZzcr?=
 =?utf-8?B?cHVCZ3k3WmNtYytrb3pNZ3NUVlJvZkliblJMWUxZQlJoRTB0d1FVaGlsZCtW?=
 =?utf-8?B?YjNuTVpCZ3FGME5UQ0lGbTdncThSbHJBTU1kaVp2YU5ac1VBZXlaeGpYTzJa?=
 =?utf-8?B?a21QSlNLT1NXMGFPcTNIajRLRXIxWXpDREpydVlGU2pDeEdPVzI0SHJ5UnlU?=
 =?utf-8?B?UXJpakdERXhNZzFHNnEzSjFiSk5BU0NIVzA5ZC9KR08zZmdDVmxLKzdxRUdZ?=
 =?utf-8?B?b1plNHJpSU5Nb1dXODBab2pVTkdhbWhpSmh6enM5OGdWSWh4Y2JtSUNZRDNs?=
 =?utf-8?B?V2VkUW1FUWx1K0lDWTBJYTdEcnhoVlE1RXN5WWh5OWliUlVtSEhJb1BRWVdI?=
 =?utf-8?B?MVNrNE9OTEU0Q1lDQjU5ajRMeXRHRHhtMVdYbHlzajhpaU5vWmcwUXdoMVI1?=
 =?utf-8?Q?dJr/fTzKKHzoaaz76lXjwxRKutK2+TNl?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WEZzUEtrZzFrekdoOWdqZnF0TnFsS3hpV2RLUXJSZDRVazl5bDViMXhSU3dF?=
 =?utf-8?B?Ky9CWTlOSjV4ZGdsN1dKQkZxcGpDT2xjU1J5MmJWZ3gvT1prdFF6bEJKVVlS?=
 =?utf-8?B?MUF3cnJOMEwvdW1iWnpRMS9NeWI0ZVcyV3dmTk1zdWd4amRwQjNtb1k2V2Vo?=
 =?utf-8?B?RVF3bWhtSTk1aU50UjBWcmhGSnRiZCtvZ0tKMU5oMkcvbjRjTmJFMTErWUN3?=
 =?utf-8?B?ZmpqUytJbGdpQzlkZHIxWC9Vdlhjc0R5aUUyY3o2cU9NaHFwMmVUMlppSzFs?=
 =?utf-8?B?b3hRaXBIWm1QTTlCbXQ3cE5rdVhrVU1rMHVMWXRadnNOTmJXUm5oWERZZ1Aw?=
 =?utf-8?B?cG1XdzVZdklIYWFVU1dVbmxHcTRrL3JHUHJQV3JJTCtVa1dMNm9OUy85eUdI?=
 =?utf-8?B?ZHo1cGRONUVFbXp4b3FTK29jamNtQlI5N3dmL1BFZU5QcXZER3BieGN4VzJ6?=
 =?utf-8?B?aGxiWnVOejhqMkNGWVBxMGlybEFIcFR2QUhITnJIOFh6VnlBL1lhL0YrWEVY?=
 =?utf-8?B?RzloSExDR2dQRDlReGpaanFkdk0vMGJ6R2gzLzRFMExSMkVZSlVQNHRjMlp0?=
 =?utf-8?B?YzBDV2JkcWR1b09ZNWVhbmQwYXpIakhYNjR5REpxZjNpejlkN1lmcm5wZFpD?=
 =?utf-8?B?Nkw3ZU1Wdk15bXdHSlhBT2lZZW9XNXNuMW1vUGRPSTdlZEVIRG1NTUVIMnFa?=
 =?utf-8?B?QjNYYkpRWnVWYXZVQ0lvSTlSTUcvMW1IY2Qzd0xaZU56MVkwUFN4MGRxMkVJ?=
 =?utf-8?B?ODlQY1ZmVk5QT2dkSzBDTVpLT1FQdlp6NjdhajRMajVHakw0TFJFV2k3T0NY?=
 =?utf-8?B?U0RKdW41Q0JhcGh3MkRzeThQaWRDN1F0eExkSXYvYXI2a3lzSGVtWkNpSmVE?=
 =?utf-8?B?K2dZcWhkd3dSQmRMY3FoUm8vVVJmNWFvdTUwN21NTnpNa21sa2IvUGRHR0NG?=
 =?utf-8?B?YUw1eVlyL0x4S044UnAvSTdGYnR5VW9teWlxVVNIV0ZHV1RFN2dQWGFqVlp3?=
 =?utf-8?B?UmEzRC9WL0ZMNkdQY1kycnlxUDJtVnZ4QURJYi9VNytacHBQRDdKMCtRZkFF?=
 =?utf-8?B?QXhqcUp4ZjVtMHk1WGhOak9MUFdvem1SQ1BnTDlpaUpkeEJDZEJDMVB1czFv?=
 =?utf-8?B?RXZlcGd1eDV6N1RMTTVYeWhoWXRlem5henRsZjZrckFlOEEwTnE2aUkrM3ZR?=
 =?utf-8?B?cnJ5NzIva1lJL0pqUW9ZL2F5QWtXU2xzeWlGeWVscnNBWXVqeGorSFgyKzZM?=
 =?utf-8?B?T1g3VlBwTmJYMVFUWm83V2VOQVBBSmdla0hYZVNsMWZIdnlXSWFONWpzQlZ1?=
 =?utf-8?B?dHlqRzI1R2VUbGNKaWNQWU5aa3pvZGg4dS83V1N5M0poOW1oUTc0YnNNaGl4?=
 =?utf-8?B?YkcyM1ZROHBLZDZHSldjeU9lbkY0MTl2aXhjN1NXTW5aZmFOZ3pDTVR1cklj?=
 =?utf-8?B?UFdaUFc5c3RBek9kQWVvSzdwTWZqcmdidkJDL0pTdllnQm11RVFwL0Rxb3F2?=
 =?utf-8?B?bmpDcU1EMWpCaVdGM3drZGFGZGZHTHlJTG5NSG1RUnBJam1LMWpEVHFhU2dW?=
 =?utf-8?B?LzR4QU9qaW1QcnhBdG4wMEczazJYUXdaaEJFWUhEWjRQOW5vZFVRVkdnT2RW?=
 =?utf-8?B?by9HbVh3a0ZMR0I1QmRPUlFwYmZvN0x0bVY4MHN1emV3ZlV6MzNmRytvMFRV?=
 =?utf-8?B?RTR1bDVLWkpKSllkSkd1T3VzUDR2cjIrZTdyOStpZnQ5TVhrNnNVbHJQck51?=
 =?utf-8?B?eWhyVGNpK0h2dG1JeGRBdEU2aWFwZUJ1bk8wcnR0VVdYTU1ENTkwODJTbm80?=
 =?utf-8?B?MjBUeWg1UE1Ra0ZCODFLLzdEZFBJaHEyazRjZjJQLzI1aGhrQW12T3pyM3VJ?=
 =?utf-8?B?NEZ6R0MySWI0RDc3ZStpRXdPUkJXbGtwT2RsUHBVYkR5SisyS3pTYU5KbUxk?=
 =?utf-8?B?ZWtsN1FOSnV1Nmgxc0pCUnFXSEtvanByTlA0MkMyakdyVHBxOVlFY2s5MS9G?=
 =?utf-8?B?VEJYZTVWVnlCN0JYYWZGU0gxK0pQek5OSk9oMjBQa3FFaVFkYjNMWkUwSSt5?=
 =?utf-8?B?SmJIV1FmUzFUa3ZOZG0xenAvK1VkZVBWZ0dQNnV5azlWMk11YWJGNnVTbHVi?=
 =?utf-8?B?MjZMWWJOYTNqYVNRWGgxRW5xSnFpU3h3TlJaUzRoaUhzZFVpTHNNN09hRk13?=
 =?utf-8?B?dWc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 09729655-b35d-42a7-55b6-08dd62d731f8
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Mar 2025 09:04:15.2124 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ly6dt2Wcx+SGdRJj83sjBiXrSpN5Z9FqSM5TKElqaJQrk6cvDANcW49IXgU883AsuutBIVNwWTVyXpJFF+7jddNbGZe3hCvwvqiP9ozcMyY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB5804
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
Lmx1QGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogVGh1cnNkYXksIE1hcmNoIDEzLCAyMDI1IDc6
NTMgUE0NCj4gVG86IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNoYWl0YW55YS5rdW1hci5ib3Jh
aEBpbnRlbC5jb20+DQo+IENjOiBiYW9sdS5sdUBsaW51eC5pbnRlbC5jb207IGludGVsLWdmeEBs
aXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLQ0KPiB4ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7
IGlvbW11QGxpc3RzLmxpbnV4LmRldg0KPiBTdWJqZWN0OiBSZTogUmVncmVzc2lvbiBvbiBkcm0t
dGlwDQo+IA0KPiBPbiAyMDI1LzMvMTMgMTY6NTEsIEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgd3Jv
dGU6DQo+ID4gSGVsbG8gTHUsDQo+ID4NCj4gPiBIb3BlIHlvdSBhcmUgZG9pbmcgd2VsbC4gSSBh
bSBDaGFpdGFueWEgZnJvbSB0aGUgbGludXggZ3JhcGhpY3MgdGVhbSBpbg0KPiBJbnRlbC4NCj4g
Pg0KPiA+IFRoaXMgbWFpbCBpcyByZWdhcmRpbmcgYSByZWdyZXNzaW9uIHdlIGFyZSBzZWVpbmcg
aW4gb3VyIENJIHJ1bnNbMV0gb24gZHJtLXRpcA0KPiByZXBvc2l0b3J5Lg0KPiA+DQo+ID4gYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYA0KPiA+IGBgYGBgYGBgYGBgIDw0PlvCoMKgwqAgMi44NTY2MjJdIFdBUk5JTkc6
IHBvc3NpYmxlIGNpcmN1bGFyIGxvY2tpbmcNCj4gPiBkZXBlbmRlbmN5IGRldGVjdGVkIDw0PlvC
oMKgwqAgMi44NTY2MzFdDQo+ID4gNi4xNC4wLXJjNS1DSV9EUk1fMTYyMTctZ2M1NWVmOTBiNjlk
MysgIzEgVGFpbnRlZDogR8KgwqDCoMKgwqDCoMKgwqDCoCBJIDw0PlsNCj4gPiAyLjg1NjY0Ml0g
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tDQo+
ID4gPDQ+W8KgwqDCoCAyLjg1NjY1MF0gc3dhcHBlci8wLzEgaXMgdHJ5aW5nIHRvIGFjcXVpcmUg
bG9jazoNCj4gPiA8ND5bwqDCoMKgIDIuODU2NjU3XSBmZmZmZmZmZjgzNjBlY2M4DQo+ID4gKGlv
bW11X3Byb2JlX2RldmljZV9sb2NrKXsrLisufS17MzozfSwgYXQ6DQo+ID4gaW9tbXVfcHJvYmVf
ZGV2aWNlKzB4MWQvMHg3MCA8ND5bwqDCoMKgIDIuODU2Njc5XQ0KPiA+ICDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBidXQgdGFzayBpcyBhbHJlYWR5IGhvbGRpbmcgbG9jazoN
Cj4gPiA8ND5bwqDCoMKgIDIuODU2Njg2XSBmZmZmODg4MTAyYWI2ZmE4DQo+ID4gKCZkZXZpY2Ut
PnBoeXNpY2FsX25vZGVfbG9jayl7Ky4rLn0tezM6M30sIGF0Og0KPiA+IGludGVsX2lvbW11X2lu
aXQrMHhlYTEvMHgxMjIwDQo+ID4gYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYA0KPiA+IGBgYGBgYGBgYGBgDQo+ID4g
RGV0YWlscyBsb2cgY2FuIGJlIGZvdW5kIGluIFsyXS4NCj4gPg0KPiA+IEFmdGVyIGJpc2VjdGlu
ZyB0aGUgdHJlZSwgdGhlIGZvbGxvd2luZyBwYXRjaCBbM10gc2VlbXMgdG8gYmUgdGhlDQo+ID4g
Zmlyc3QgImJhZCIgY29tbWl0DQo+ID4NCj4gPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgDQo+ID4gYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiBjb21taXQgYjE1MDY1NGY3NGJmMGRmOGU2
YTc5MzZkNWVjNTE0MDBkOWVjMDZkOA0KPiA+IEF1dGhvcjogTHUgQmFvbHVtYWlsdG86YmFvbHUu
bHVAbGludXguaW50ZWwuY29tDQo+ID4gRGF0ZTrCoMKgIEZyaSBGZWIgMjggMTg6Mjc6MjYgMjAy
NSArMDgwMA0KPiA+DQo+ID4gIMKgwqDCoCBpb21tdS92dC1kOiBGaXggc3VzcGljaW91cyBSQ1Ug
dXNhZ2UNCj4gPg0KPiA+IGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGBgYGANCj4gPiBgYGBgYGBgYGBgYGBgYGBgYGBgYGBg
YGBgYGBgYGBgYGBgYA0KPiA+DQo+ID4gV2UgYWxzbyB2ZXJpZmllZCB0aGF0IGlmIHdlIHJldmVy
dCB0aGUgcGF0Y2ggdGhlIGlzc3VlIGlzIG5vdCBzZWVuLg0KPiA+DQo+ID4gQ291bGQgeW91IHBs
ZWFzZSBjaGVjayB3aHkgdGhlIHBhdGNoIGNhdXNlcyB0aGlzIHJlZ3Jlc3Npb24gYW5kIHByb3Zp
ZGUgYQ0KPiBmaXggaWYgbmVjZXNzYXJ5Pw0KPiANCj4gQ2FuIHlvdSBwbGVhc2UgdGFrZSBhIHF1
aWNrIHRlc3QgdG8gY2hlY2sgaWYgdGhlIGZvbGxvd2luZyBmaXggd29ya3M/DQo+IA0KPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9pb21tdS9pbnRlbC9kbWFyLmMgYi9kcml2ZXJzL2lvbW11L2ludGVs
L2RtYXIuYyBpbmRleA0KPiBlNTQwMDkyZDY2NGQuLjA2ZGViZWFlYzY0MyAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9pb21tdS9pbnRlbC9kbWFyLmMNCj4gKysrIGIvZHJpdmVycy9pb21tdS9pbnRl
bC9kbWFyLmMNCj4gQEAgLTIwNTEsOCArMjA1MSwxMyBAQCBpbnQgZW5hYmxlX2RyaGRfZmF1bHRf
aGFuZGxpbmcodW5zaWduZWQgaW50IGNwdSkNCj4gICAgICAgICAgICAgICAgICBpZiAoaW9tbXUt
PmlycSB8fCBpb21tdS0+bm9kZSAhPSBjcHVfdG9fbm9kZShjcHUpKQ0KPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgY29udGludWU7DQo+IA0KPiArICAgICAgICAgICAgICAgLyoNCj4gKyAgICAg
ICAgICAgICAgICAqIENhbGwgZG1hcl9hbGxvY19od2lycSgpIHdpdGggZG1hcl9nbG9iYWxfbG9j
ayBoZWxkLA0KPiArICAgICAgICAgICAgICAgICogY291bGQgY2F1c2UgcG9zc2libGUgbG9jayBy
YWNlIGNvbmRpdGlvbi4NCj4gKyAgICAgICAgICAgICAgICAqLw0KPiArICAgICAgICAgICAgICAg
dXBfcmVhZCgmZG1hcl9nbG9iYWxfbG9jayk7DQo+ICAgICAgICAgICAgICAgICAgcmV0ID0gZG1h
cl9zZXRfaW50ZXJydXB0KGlvbW11KTsNCj4gLQ0KPiArICAgICAgICAgICAgICAgZG93bl9yZWFk
KCZkbWFyX2dsb2JhbF9sb2NrKTsNCj4gICAgICAgICAgICAgICAgICBpZiAocmV0KSB7DQo+ICAg
ICAgICAgICAgICAgICAgICAgICAgICBwcl9lcnIoIkRSSEQgJUx4OiBmYWlsZWQgdG8gZW5hYmxl
IGZhdWx0LCBpbnRlcnJ1cHQsIHJldCAlZFxuIiwNCj4gICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAodW5zaWduZWQgbG9uZyBsb25nKWRyaGQtPnJlZ19iYXNlX2FkZHIsIHJldCk7DQo+
IA0KPiBUaGFua3MsDQo+IGJhb2x1DQoNCldlIHN0aWxsIHNlZSB0aGUgaXNzdWUgd2l0aCB0aGlz
IGNoYW5nZS4NCg0KUmVnYXJkcw0KDQpDaGFpdGFueWENCg0KDQo=
