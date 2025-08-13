Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F2E94B24ABF
	for <lists+intel-gfx@lfdr.de>; Wed, 13 Aug 2025 15:38:46 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1A25510E4E3;
	Wed, 13 Aug 2025 13:38:45 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CjACR3w/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00D9310E4E3;
 Wed, 13 Aug 2025 13:38:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755092324; x=1786628324;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=5lvjhTggLvVxtTZ0Ar1oN9jlfh0+sxDax919dmDyWKM=;
 b=CjACR3w/dr+0SpSbB2XXvIfj2Ov5r68GgFg+/vJZETISrjiUqY3eaTS6
 jnuafdAjD0fMaz9PfWUEJcRRt5mJw2Tvghx5ZI3E5M0GmfHsgOZ+vIs7v
 GaVjiGvakbb0mpgUYU+ZS0iuiri+pdrBMjU9XM+m4YmfM31JlgyALFTHg
 mVi88GeGV0fDFIFkwwEgaauzsCbxOaIbpPuDVjRnl6x+cNGcNKObBU4GE
 6W7+15O5hsQ4gN48o4Ih/O3ameUpRqhHIGf9w/Ooeo2slb5yIt+aXh0b6
 Nlo26YOP6BvuOWCD+pdgX6gEho6DQVuioxDk+xXG0bE4PJLv+DIag+cm5 w==;
X-CSE-ConnectionGUID: UWoEzcNvQC+MhPpKEltPqg==
X-CSE-MsgGUID: pCJXbylrSJyZo0UysNorgQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="74834696"
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="74834696"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 06:38:44 -0700
X-CSE-ConnectionGUID: JnDan9B7ShOWcG30fk0BlA==
X-CSE-MsgGUID: julCL9E1Rvi2xCL+/tZrTQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,285,1747724400"; d="scan'208";a="165968007"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Aug 2025 06:38:43 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Wed, 13 Aug 2025 06:38:42 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Wed, 13 Aug 2025 06:38:42 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (40.107.243.58)
 by edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 13 Aug 2025 06:38:42 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=nAV/RO1rOYGmkfzHSXDzkpgYpPqWVZri7aFLwrRjLMq7LvVTu9Mq1YBPDpbjVq56S12B4XuoaofDJa8wj5xe+3cAO7Hrdsl6CKrgdpp4kmzTL/jdPi02RdPHHaSfpvci/8IesLyMEf78aNxFRQABpnRw0Fz3Nnb+ab5A3zNgbgoIIyeXJ6aaMr+4PGgRTiqR5wzXzBfxJ9qDtVObuk13EegBq55/WssoSL1VCp3mgCtNx827xEOhON7JSrruVfjrXrpH6A4MP6bkbbvC6b1DGNa8nvoYe+/Lkeabn/zidekgei6iZP56toekmqciQioTFxXtbPgiYeSA5OG0uoGlWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cGfmvJLrjj36k2vzHjwKfMa45vZy4JG/HEeEG6WeyOs=;
 b=rSq6YZJamvG5lMp+cidoJ6GidwDsTni1PBIgYIcUbDCAWvnZFXYw2poABgUTT43B9xxqN8hbBWbk87ayI7T5FRzDECr5mTT/ISrQOuDlhZ0phTVFrAnsbl+hDCPoyS0eRCMMaTWvkk01xKyBFmJbEo7MB6uHhbJX2zZWo02rFSy8kkBbwqfIhwxrfwTI8Kp9PnhmiMkPKaCGrLdGqARqyXQaS1OjNooWfdPodsTYZmaZYz/V4vhRegkS1ETPZb8TXLRS5DNr6L82pXIQTb1Uq3OYHm7JBstvL7zPMvBw10/pnHXMndOFVk48shQWE1rSJSEnjJkZMDP1T7J029tSKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MN0PR11MB6112.namprd11.prod.outlook.com (2603:10b6:208:3cc::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9031.15; Wed, 13 Aug
 2025 13:38:38 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8964.023; Wed, 13 Aug 2025
 13:38:38 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20250808081931.4101388-2-chaitanya.kumar.borah@intel.com>
References: <20250808081931.4101388-1-chaitanya.kumar.borah@intel.com>
 <20250808081931.4101388-2-chaitanya.kumar.borah@intel.com>
Subject: Re: [PATCH 2/2] drm/i915/wcl: Add display device info
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <imre.deak@intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
Date: Wed, 13 Aug 2025 10:38:36 -0300
Message-ID: <175509231662.1765.9232091119900927928@intel.com>
User-Agent: alot/0.12.dev27+gd21c920b07eb
X-ClientProxiedBy: MW4PR04CA0093.namprd04.prod.outlook.com
 (2603:10b6:303:83::8) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MN0PR11MB6112:EE_
X-MS-Office365-Filtering-Correlation-Id: 000a3f32-4886-44db-2339-08ddda6eb53c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VC91MXg0ZEVsRkRac2xmbm1kSlNUalZaSGlueUducGl1dDI1cE82SUxsd1FL?=
 =?utf-8?B?MnRoYWc5ZHM5UWNzRTZBcThJbFZPOU1QSFpNSEZkbmdpZWRPMWpJTTRUV1ZG?=
 =?utf-8?B?eHFsbWU1UHJBUU5GSFI4M3FIT1dJa3ZHZmREeG9EY2RFVVFWZ0ZFWjRTMDNO?=
 =?utf-8?B?VXJtR00rT2dnTlNyeHdNY2dnT09GZ1pya0xnWmlGbGFmTko5cnpNd2tHeUVP?=
 =?utf-8?B?U0dlTCtmYTZmRXNaUXBydGxNb2thQVRnZXBONU9LY1ErRzJHdlZYRjN0Vno5?=
 =?utf-8?B?ODJFOEtJdnlwbW1MTWJTRWd6bGcyR1FVakVHQVhxcEZKN1JvV0MyYWxLdlAx?=
 =?utf-8?B?RjhxZzk0SW1vMFhMTzdCaThmbjRnbXk3c0VWSVlHR2JmSkJTYjAwM1YrT1V3?=
 =?utf-8?B?dmpVTFRwWG5ZUDBLcHQvV3p1ZVFIYmJmWEI1Z01uWllUcyt0QW8wcjBsQ2Ju?=
 =?utf-8?B?NGttY1hCcmZuTHRxYjkxWXZZQUZhL28wL2F6bmt5aTJsWVRCSUEzRE0rUW0x?=
 =?utf-8?B?RzEzTGcwenVkeWt2QWVncTBYUXFyNWh0V0tUQVArTXd4YVVHT2h6SlhCenJM?=
 =?utf-8?B?UnhneHg2ZWVaWnduRDFhNjNGZ00wcGR3WS9qTGt4REdJUDd6MEJ6Mm8vWDRk?=
 =?utf-8?B?SEFXWjZpK0ExMDNrc09SQmV2QmZhcWVqT2dwTDJUN3NIMnR2YnNiWlY0ZEZx?=
 =?utf-8?B?aUZjaDZCeWRkV280c0hnYTRwVVNsN2FKNUtYb1JrQ3pDYjdhbDBMaHl3a3gy?=
 =?utf-8?B?UWt1akMwTUVqeWJ4STdDdDVEeGc3Q3huMnh6aEt2ZU1rNzB5U2FJWDNvelVr?=
 =?utf-8?B?WXBuNDk3MG5yYnBCbmlTSEV1djNtMlVxUlpxVUVMeUYyV3NNQlMwRU9UdXJm?=
 =?utf-8?B?TFU4Q0VERExYMjYyOW1td3lYUTJhdEdtU2VyaHNjc1RCYTZUUDEzbXZhTDBr?=
 =?utf-8?B?Mis1a3loZXFXMjRsZmhCT08vRXJTNzJvNEtGejJRKy8rZWtrYUc2eDZzWkJr?=
 =?utf-8?B?eXhPR2Y5OHBlNGtDcDAySGFQUUVDNHBlUUllYmJEUTcvVVkxczg3QTJJWlYw?=
 =?utf-8?B?WGgxYndkVnZ0OXEraWxSY0x3Ny9XMlE2Z0owRjltNVJwR2NmYjh6TlJNbkRH?=
 =?utf-8?B?N0F0TkFPQ1grME1MVWxudHdOMElEZFFjbXpYZFpoYjhyOFdUNU13aTJ2RjZl?=
 =?utf-8?B?WDJDMGtMalVXZ1pjaUpianlFVHdZU0VoY3RDS3l4Z1hKM3Buci9lSFFBT3VK?=
 =?utf-8?B?Z2ZmWTBYSWJ1dWorc0dhUDJUME5rY1NNV0I0L0hEaGlodXNXQTBYTkhEVXNE?=
 =?utf-8?B?Mlh3M3BvQkhtZlo3MnhzanBPR3UyMjdpVVFMOWt3cG5RY0toczBkd3R6bXBz?=
 =?utf-8?B?SndKa09HMWhXbnRYTHY4MzB3Z0NqeExGdHVpTjFRV2lZZSswMkNFNUlIcmd4?=
 =?utf-8?B?QjVXYVdyVC9RRkxqWk9MdEJHbmgyZ2R2M0tpcmsrTTRwSlVUdzNGR2lLS0dD?=
 =?utf-8?B?TEFTZWRCNWY2dU5Eb2xCN2xvN1o4Sk0xL1phcFlOeG9Udk9VK3ZGSFlzTW9E?=
 =?utf-8?B?MjNsVVBIUVVBOUJiUUtJa1NEdTcvV3ErSjNVSDVOVmdvcXQ5SGdNRklCNFdy?=
 =?utf-8?B?eUxnVUMwRHBjaHRFOXUxcmtXZndqeXUxM1JEcUhCT2hscVJpd1dFKzZHb0hp?=
 =?utf-8?B?UGw4UEZOU2xXV3VFZVB6OVJjSENKLzNpeVlmcVgrL3JBSXBqN0hCN2pTZzZh?=
 =?utf-8?B?Qjhtd2lad0tDNERSbW9YVnN3cEMrTFFQSGtVUm5hdzNRR2dtR1d0dXN3dHUr?=
 =?utf-8?B?THNPK0FKc1RxNkIzTDVJRDArenJOTWUybkZ4Y0JML1NyTHRPVitndkdoSDdh?=
 =?utf-8?B?S1l3cHgrUzVxczBXNjRzZXZSTVVUdTZMU1p6SzFyd3RKUGZwb0lkV2VmemlV?=
 =?utf-8?Q?UAY7PNUJQs4=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?aVRpcWxWUGZBTDJKM0Zxc1F4ZW1oaDlXR2Erc3oxZWRybWVxQjBLK21STjYx?=
 =?utf-8?B?K043MzJIRndUMHNMc0RnNDFJcmIxNGVuV3N1ZjRsTjhyaHYydzhseVQzNlVU?=
 =?utf-8?B?YXpWWThuRDVuck93SkF6YVZ0WjVBS1dTY2RhUUIrTnBKai9QQzFmanRXM09j?=
 =?utf-8?B?cGNNejFWQUoxVnJDOFRzeHA0RkNvWXdieUo2VEpwYWlhVm1jaENxRktRMktS?=
 =?utf-8?B?T0ZIZHdoK2FRMGJKK0VEbUMyZUVVRnhDT0xVSGo1UFN6VHVjeXR0aGJMekxW?=
 =?utf-8?B?UUEzMzBtV2M4bXRoNUpGTG15L3dRVFF3cHlQNVJ1d2ZTbExFa2FpY01CNmNo?=
 =?utf-8?B?MXJNV2NGLzdReG9FQ1pEalFMSlpFZi9CT0hLWStQd0RtZTFPKzNOOC84QmNC?=
 =?utf-8?B?ZEhuVkxFY3BMcTlxTHBxYUVnVDBieS9oRU91cXFYaFhETUdRakFMQjkwUS9j?=
 =?utf-8?B?QkxzSDlHaUhhVk01Qis5UFhqY09lNFcwS00zczVUa2FScWIrZXdJR3Bxckdu?=
 =?utf-8?B?WWVSdXgxczlWam9pYkJtQjdlQVY0ZzNIMUxCWWRIdEVLSkVIdFM0RGlVdGI2?=
 =?utf-8?B?ZVFGVTE1a2lWVWtkMlJST2R1b0xKZnZuRm44RitLK2p5bWoxczZTSldvdFA3?=
 =?utf-8?B?aWUwVjJxRnE1YmlEYzRiaENWYjE5TkpMSHo3NXBLbkFzWk0xd1ZHWVVmZmRF?=
 =?utf-8?B?R1Nuelg0U000Z0cyWmd5ZDNGNFdKS3ludXpaQmZ2L1dmQ2ZZdkcrbWRzRXo0?=
 =?utf-8?B?ZFhRUys3VC9mTzgrSGQ2TzVtb3RTbkZXU2dyMkpLcXJOVjE4Yi9xbk1ESUlG?=
 =?utf-8?B?ejVxRTdoUzcvMVRiY0hsbnZuL3hoditjLzR5TVp5WGc4em5tZXdIYm4xVnZ1?=
 =?utf-8?B?dE9xRmFKdTFIeUhxZGY5dVJvRG5BbnhGUlA4WWd1SVBNUmRBQVdLNVUrQzVG?=
 =?utf-8?B?VXdhQzRwLzhMWVp1TlJhVXBiTUZGVTZIbGRwRmlKdU1LUitWaGowWXdNWVpQ?=
 =?utf-8?B?ZUVsUXcwdEx0RVcxZW5iOXUzK1dpQTdwU2Z3RHdEenF3TG5CaGFMdll0dTVN?=
 =?utf-8?B?cWdITVcxWCt1OUxRUUVoWVpzUEpGd1Rxcm4zMjlZdUloQ3k2OUZFTnRrS0NL?=
 =?utf-8?B?MnlLR3dXMzBBc05CQUFKVitpWjd6L1VwT0lDOXZvY1JLUWJRVmF1bVg4aUMx?=
 =?utf-8?B?UTlkRWRxeERnczJIbzgrSUdxVzRCRHBjeVd3eGNZdFJFN20xYnlIS21HZzRN?=
 =?utf-8?B?RDlEQUlHK0luRWJ0aEpQbmkyV0ttbUxjTzFWU0hhNnhNSUJPNERYa1NoNXpx?=
 =?utf-8?B?NjhXVURsSEV3bXUySEozYjVnTXVCTURDN2h4S2tXejhSOCszaDVIcmZJL3U4?=
 =?utf-8?B?R2IxanNLaVdLQk1pM1NVbVJkZWlGUW5lR2xMR1NUMEJhVnlWUFFjRkFRWUdp?=
 =?utf-8?B?eFpUcmpOc3N4UDZ6SHBCQktGcE1zdHFwbUZSRVhmeVJySVc3V1QxcHRvTk96?=
 =?utf-8?B?bldBajFoRU1qWGhuZWJxSWQ1WDczbXdoRUhkTjcvWUFodkRZWjdVYmpCQlZL?=
 =?utf-8?B?OWlqVlRIeThkSmlrZnJUMzZ1WFhzZ1RrbzVmejBRa3hvSGtSR0lhbGVZc3kz?=
 =?utf-8?B?clN5RmVhTzN0S1JPNmFqRzdLbVE2WWUyWU9hMUpxQkkvYnpVODRCRmxaREo1?=
 =?utf-8?B?QUQ2V1NWQXdrb1d1SElURk5kTDFadWJ4dmtPODdJdlBMZXdEVW5FRXY4a2do?=
 =?utf-8?B?UE80NW9kN2QwTFdsYk0wV2R6c01HUjk4VHNWUUlxdVJ2bmFBeThnS0VOQ0J0?=
 =?utf-8?B?SUZ1RGFmTHBpRXR1T0J3LzVTdGE1bjlmRmk0cnU4WmJHUW5Vd3Q0NUVxYnNa?=
 =?utf-8?B?UzJHSXVzSUloanN5a2FJWjFQTmdNSVBjSmtVSXRaQytYaXZDeDdwTDk3c0RD?=
 =?utf-8?B?QkdkWUZGNnphUUFERjk3VXR3UjB1WGkrb3BIczJiTVFYbWVzejdVSGZZVTFB?=
 =?utf-8?B?ZzZwai9GbVVWb3NnR0t0d2VzcVcyYTM0bnNraHhwMEZycDhBL1NLdXMzNlQz?=
 =?utf-8?B?b0FXd1VWTGRrVC9sUzlVSmV2OEF3M2VIR0pPcEdLZFNHSGM4L04zYWJNZEc3?=
 =?utf-8?B?L1VEN2JpSmFOMVVSY2tDQTdWanlpalNKL2NjeEtTditjUUJDUnZnVkk3a2RS?=
 =?utf-8?B?Rnc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 000a3f32-4886-44db-2339-08ddda6eb53c
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Aug 2025 13:38:37.9957 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: yXT5BUZ0r1MJfbxa1iRFBbnH1+MvqmaL9+1EhwFPegD8HCDX6Kno1fKYfa2rVjaZGfAv3R0kz9SDp23tSptt0w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6112
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

Quoting Chaitanya Kumar Borah (2025-08-08 05:19:31-03:00)
>From: Imre Deak <imre.deak@intel.com>
>
>Add device info for wildcat lake. WCL has 3 pipes and 2 TC ports.
>
>Suggested-by: Gustavo Sousa <gustavo.sousa@intel.com>
>Signed-off-by: Imre Deak <imre.deak@intel.com>
>Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>

Reviewed-by: Gustavo Sousa <gustavo.sousa@intel.com>

>---
> .../gpu/drm/i915/display/intel_display_device.c   | 15 ++++++++++++++-
> 1 file changed, 14 insertions(+), 1 deletion(-)
>
>diff --git a/drivers/gpu/drm/i915/display/intel_display_device.c b/drivers=
/gpu/drm/i915/display/intel_display_device.c
>index 089cffabbad5..65f0efc35bb7 100644
>--- a/drivers/gpu/drm/i915/display/intel_display_device.c
>+++ b/drivers/gpu/drm/i915/display/intel_display_device.c
>@@ -1354,6 +1354,19 @@ static const struct intel_display_device_info xe2_l=
pd_display =3D {
>         .__runtime_defaults.has_dbuf_overlap_detection =3D true,
> };
>=20
>+static const struct intel_display_device_info wcl_display =3D {
>+        XE_LPDP_FEATURES,
>+
>+        .__runtime_defaults.cpu_transcoder_mask =3D
>+                BIT(TRANSCODER_A) | BIT(TRANSCODER_B) | BIT(TRANSCODER_C)=
,
>+        .__runtime_defaults.pipe_mask =3D
>+                BIT(PIPE_A) | BIT(PIPE_B) | BIT(PIPE_C),
>+        .__runtime_defaults.fbc_mask =3D
>+                BIT(INTEL_FBC_A) | BIT(INTEL_FBC_B) | BIT(INTEL_FBC_C),
>+        .__runtime_defaults.port_mask =3D
>+                BIT(PORT_A) | BIT(PORT_B) | BIT(PORT_TC1) | BIT(PORT_TC2)=
,
>+};
>+
> static const struct intel_display_device_info xe2_hpd_display =3D {
>         XE_LPDP_FEATURES,
>         .__runtime_defaults.port_mask =3D BIT(PORT_A) |
>@@ -1480,7 +1493,7 @@ static const struct {
>         { 14,  1, &xe2_hpd_display },
>         { 20,  0, &xe2_lpd_display },
>         { 30,  0, &xe2_lpd_display },
>-        { 30,  2, &xe2_lpd_display },
>+        { 30,  2, &wcl_display },
> };
>=20
> static const struct intel_display_device_info *
>--=20
>2.25.1
>
