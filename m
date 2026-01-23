Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAJ0HbCDc2kDxAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:20:32 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E1E6576EEA
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:20:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6CCCC10EAFD;
	Fri, 23 Jan 2026 14:20:30 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aZORisLf";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1AF6910EAFD;
 Fri, 23 Jan 2026 14:20:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769178030; x=1800714030;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:cc:references:in-reply-to:mime-version;
 bh=UNHnh1P7/YwsZcTAn+eNcxUbm1TlWz8JHNd9d+aCRfY=;
 b=aZORisLfh6mkUYkUthj+CZYXgS1VWKz5nbVxW3oYNnlTtPLsF8pvjnip
 ROd/vh778Ntm5TL5wQYoFkxkThbyHOro/qTjTnq+Rp75cbpXft/bM++Ui
 sH1AVupJ5Nc/jonAfo0bYBoAPKQ8g4xp5EYaHusoqrjpdfWkqhOAyO4u6
 BLHTm3XLOOWz6dTg0+8mPQ1nC1sRmDTu+65BGYW4d7CjJPbID2TiQ5o0X
 yDI5SR1+9ufRamu+OWEqqTy4zI7WW/AJh9aYsE9d92ZBmxu+jQEGwpygd
 0IRXYEsn3pFgmeJwn7qcp6XmQYSvHx3L8nfHfT05mpzkdB/OSoVVvnldr w==;
X-CSE-ConnectionGUID: tEaJmPnUSDSkYoaY5F0p1Q==
X-CSE-MsgGUID: CFJ3g1RERweEGcnwywVVPA==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="70482364"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="70482364"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:20:29 -0800
X-CSE-ConnectionGUID: sFze8K6ZQYSklcKHGYtD/g==
X-CSE-MsgGUID: n/vQ3go5RmKy2ulH+SXrng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="206145233"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:20:29 -0800
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 06:20:28 -0800
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 06:20:28 -0800
Received: from CH4PR04CU002.outbound.protection.outlook.com (40.107.201.38) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 06:20:28 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=APWHW8ZcmmReoBFCeALcm15ym+MjYcRK/OLs0/9BWhpDJpRrYmDqw3HZS0x2ZY/SlCu+kf8BcCbcWP6KRop6XY/bqxjMy8ecgF5hrLCXPi4WQsynFfftDSF7IXrsvcQg8so1qog/ZAZ3jlHfys3vqMmaCtiJPS8lhnv4PjqfrCXcQ38xd+8LhIiTKkUBmUJZDOZ9Y09qL56oCjBtGBEsKqt50IcHlTrB+2ilHnPZancKI/jHzsHoWHObba3xAJB2m63uYIP4eftb/d4Kx3keVLm5SMR49iPMoU9nzoEn5mIhimhlpXsgE8UoOa+T/Qp5249tDoyo0M1P0JwW7WB8OQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=neMnUuihFQd++2raGiKStjKgF9Lx4muYXQqyqiC/tN0=;
 b=eVF7w2X47iVxIsw08l4x0cnsqwAgR+WBCJq7coGbZVa7rlNcjaHgxdQPWuNktZbEcTAOumBxBURhihdaXA6XSlQZJ/BVCRYjTMgwpbMSDYkyKDEZFUPg3NYCenFybfX1jMSrSELU376dFO9sHJ7I4PLYwrNCjum8ReXU56Vnjo8oUTto0OCvinv5UPU0K/cF4/eBpeHaik2u7vpD6TcJSVyDWnRT/i+Zl+NQiDF0DBNst7zt0pSQmi1a+OLAasRAVZtXGDvEeZ/549BtXKidSBmchNDOOxJhqVnixbaQoLLklN777l0yQ/x6XGiQmUbqz89MMHQvL2H31Vg4ahwukA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by DM4PR11MB6263.namprd11.prod.outlook.com (2603:10b6:8:a6::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.12; Fri, 23 Jan
 2026 14:20:22 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 14:20:22 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 15:20:16 +0100
Message-ID: <DFW19KMSYZCL.16OO7RCUP9LLQ@intel.com>
Subject: Re: [PATCH i-g-t 1/7] lib/igt_device_scan: Don't print fake link
 bandwidth attributes
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 <igt-dev@lists.freedesktop.org>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>,
 "Kamil Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>
X-Mailer: aerc 0.21.0
References: <20260121114656.1970684-9-janusz.krzysztofik@linux.intel.com>
 <20260121114656.1970684-10-janusz.krzysztofik@linux.intel.com>
 <DFVX1OVYV0MD.35VZJM8STQSXN@intel.com>
 <13932403.uLZWGnKmhe@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <13932403.uLZWGnKmhe@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: WA1P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::17) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|DM4PR11MB6263:EE_
X-MS-Office365-Filtering-Correlation-Id: 3cc6c5a1-c7f2-4edb-7af7-08de5a8a8b57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?LzZ2T0FjN0l4N3paUG52MUV3enRObzhJTUpoWk9Ua29nU2ZZQVJPVGUxVDZP?=
 =?utf-8?B?OTFLR3YrRVMvbFgxbjgzTitORFh5bXp2QVhrUUM3YURzaU9aM3NiSkwydWdy?=
 =?utf-8?B?YjhxVWJGUXQweDNUc1B5RUp6ME1COVcxREhSNmVaRG15dGlXWnM0b0psZ0Zw?=
 =?utf-8?B?aTBFWUlGc212eDRVRFQ3VWdXSks1UEg4Z3lQdThFNjlhc1BSNG9HcnRCazE2?=
 =?utf-8?B?emdNdVN0dzVTNTY2ZHpwSHZ6cXo2cnlKOG5scjEraFBjcWhpWVlGL0NoYXRi?=
 =?utf-8?B?MFRrMHU4RjQzNG0vMVdrdUdBUlZVVFJYeXBqU1JWaVlSRHZZdVNXL1BRRlpQ?=
 =?utf-8?B?S3AydVlKMGVTMEx3dXE2OTNSR3lTblhNMEVEMkxIVGxaU2c3WDRNcWVjMEto?=
 =?utf-8?B?VnZ4REhTS2M1YXM2aHA1akFRSkFFV2lFQmhjenE2VFRzRDRMZkQxM0twRFZV?=
 =?utf-8?B?VWtZS3RQaTdVTFRFTE9YcXQ5MGkyeVY5WW1zczdDd2RLZjltM1Y3eDUxS3hU?=
 =?utf-8?B?REw4S1g5MDhKbkpQeHlhMVdJOXdFRFFFQ3VpZjg0UlBHcWF6YWFabUJvcHI2?=
 =?utf-8?B?d2Z1aTlaRkthd2dlcnkzNnZtK0cwOTVYeGdia205OFNrNTBwU1NKeUkzZFRa?=
 =?utf-8?B?LzZlYTBKakxvdklNUEVhbzU3aGdGS3dQaW0zeERRY0dzNENYd2V0OXhwdTUz?=
 =?utf-8?B?eWo5cDE4NXJSTER0WWtJQ29kaVZ0YjBwN2owbitVbktHbFJTUGY2SDRRekxD?=
 =?utf-8?B?VVA1K3FxTVZtblJoMEs2VlBPK2JmUlowcGFvc0p4dWZGWlpieFdnSDBYOVBN?=
 =?utf-8?B?SWQzdXlZQlIxc1MvMEhPZnpCZWFHWThRdWtJUTFiVXdKMENJaFM4ZUxyZGJB?=
 =?utf-8?B?NmJPS2xySzZYSnoxc3lPVXBaOEQ1WWJpN0tlV1V5clBlTnE5SW1vMXIrQ1U0?=
 =?utf-8?B?WUl3QUVaNitsMzM2ZlZ6SW9NZUhDUWJRdTBLSkpKN2RtYUNUeTFJL1U3NU9R?=
 =?utf-8?B?bThBTWNQY3ZQK1FpNy9KdUVFK2JiRGduQVgxQ2lmamp6U1Q3WXZrbktodk4z?=
 =?utf-8?B?ek5KRGt1NUp6YjZXVlc4NUhnMHF5ekFnV1hVT3RtcVZOTzlhV0g4c1BDbWo0?=
 =?utf-8?B?a1FrVkVTRWl1NE5xWmtwY3Z4d1h4dnVXTmhBT0RXbXE1SjBqeHNDcDl3bVRP?=
 =?utf-8?B?WUF6bkZ1RndHUksyaHQ5c1B0aWdaR2VTVjVGNWhaWGFIWlZrTGpoZTFYNUNa?=
 =?utf-8?B?K0VFbGF2Z1k1NkUrakpzYmNJdVlua01UckVjVktOVlBFcUNHTzFxemhIYlhn?=
 =?utf-8?B?VGtXOE02TmZ4Um94WHlCWUk1L3N3blo3L0N6RDhveDNrZS9wWkJzWDBCRW8x?=
 =?utf-8?B?Rmx2NEVDU05EVUZ1czZKRUNTclRYeWxVVWxhOSt0V2F5MExzbVBldFNzZFo5?=
 =?utf-8?B?SWgrbHVUbXBGdGFzWlpMVlFSZUt3VmdMUmxqZk13N1pJaWNONHVjdVlSSWhm?=
 =?utf-8?B?ZEpWR3BYcjIyNFpuYk1DZ0Y3NHZGTTJqZDllQXErRzZpWnZhOWhIZzNsZmFp?=
 =?utf-8?B?MkxEUzZ1NitUeUpRZlNwVFE5UVV4aDFDZkNMYnFrUU9WNWlvTVFXL2pJZ2h1?=
 =?utf-8?B?dEVzbmJEZUIvdVJLdytXc01OMnB2YmErOGZSNzBUNHNIWVlkck9NRmZ2VGgz?=
 =?utf-8?B?MGErQkF3bFJFVS9UMzFXR014UU1PR1BMRE1renJsbTlaVlBFOFlXU1k2N2F3?=
 =?utf-8?B?T2tGMjk0VEJzNkJZcVQwUFI5UUc0a0lBTW1KNFMrK2cxS212OEdXNWxNRWw4?=
 =?utf-8?B?OHhaa2RQSk5sWW9uVmczbko0K0dGbGRxbUc4d21jdmNhcW1ZY0Zzb3IxT290?=
 =?utf-8?B?VmdzTDNkb1JSYnJ6NS9WOHQrS3NhSlVvb2pHWk4ySEx0MnRoVEZ5SENMNDBM?=
 =?utf-8?B?azJVQys4a3M5aGYrY3kvMXp2MnN6TENJcTZ6MTJkSFlpMzNjVFNqeUdPeTI5?=
 =?utf-8?B?ZXNqNEcreUxnYWNsdloxRkVTR282RkhyNEI0c21OL2pxbFpWaTZLSEZWWTRZ?=
 =?utf-8?Q?AOCUiZ?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Qy9HSmFObkU1M0wrNVhXSU5MQUJkaEEwNHkrZjY5Zm0rQ0g4N3lXUkdmSThG?=
 =?utf-8?B?NGplY1IxdDY5a3o1Tk0wdmxCd1FHaXhja05HditlbkdSRGcxZlZXcGx3TkVt?=
 =?utf-8?B?ZDlzdXpZWEs2QythSW9zeG1Sc2dUK044T0NuajRqMHVCYWJ0OGd6clRnTits?=
 =?utf-8?B?UzRGeDdsckd2KzdTTEdNQ0pwcHdMeFhNTHYwekRmNU5BZjZWMzhvejhnUEE3?=
 =?utf-8?B?b25vTFdSYklFaDQ4Z0xkdnhacE1RcmR1a2xaU1JYcDZnOVZBYmQ4V0djdlBj?=
 =?utf-8?B?Z1VYU3poNC9oalhlQXp0amRYN0hvSU5MZkd1MTFqQW1oTkRzdEdMbVZPWnB5?=
 =?utf-8?B?YmkySE5QMjExYWZmUnFDdVA3Ykt4ZGhlYU1sc2NwOE5qanlid3JESDB0eU56?=
 =?utf-8?B?VjMvOGVKSElkT0p6ZllpQTdsM2lueUxvSkdGQk9SWTM5QkdoK3Y3azJLaXMv?=
 =?utf-8?B?OVBHNEJ3RzQ2VG5qenpiTXdtVzc2VmMxSHpBUWFvZmkwdE9XUXBZSW44cUsx?=
 =?utf-8?B?UDhXdUZzVDc0aDMvQ2FISnA4cExPVUgydWlIRTBBbWVUQTRnNmhWT2Q5YTdI?=
 =?utf-8?B?cGY2T0sxUlF2K1NPd2sxYVpOZ3djZUNPdUpublV6bkZFRWNRa0RMUlpPdkpi?=
 =?utf-8?B?b1o4cjZ1cmxOM3B2R2pHMTdmeTUrNE9iTEdrRHRqYzU1L0F1YXhZZllpK2hr?=
 =?utf-8?B?dFNvYmdPYmpRZGdjODhIVit1T3JwM1c3aWh0RmVSbXpZT1JNTWxtYUFoRFBY?=
 =?utf-8?B?azlsVVZkbWdtTmtrQjV6UlJPVi9kNG9ybmVPTmdOL0lTVEtIWmRJSXBWSGN4?=
 =?utf-8?B?ajNkMjBTUDRTY29waldnZjhwMmJMaFdZdW5rOG4wTjNHc0Q4NHZOZXE4eGN3?=
 =?utf-8?B?L1J0ZjNLWW5IcVB5RTF3NGd0dXJ4VVVqenJ2V0t1QzBJaHZYVkdSSWYweHho?=
 =?utf-8?B?TDJUWlgzek1YbGQ0QWJhdW5MTEQrSmlUV2FnazZyVFUxMHFqUXlWL3l2TUYy?=
 =?utf-8?B?NDRrQ0dmNG9lRHJmVFRZdHpzemFOMzVUSk1JalI2OU9BNVIvZTd1Ym9qelBt?=
 =?utf-8?B?dmZkUkR3blBlbmw1ZWZ2THh3UTNiYURtbkVoaG10L2lsVEJFVjJFQU5EenFs?=
 =?utf-8?B?d3U3WnVDV2VmY3FQOFRxemVxcmVPT0hZMk1lQm5HNTNPQ0xoVVpDMzVPcDJC?=
 =?utf-8?B?YWRpc1ZqRTRvL3hQWk9FaXNyRW4wWWZsaDRmUXlRQnEzYXdTaFhlZUQ3ejcw?=
 =?utf-8?B?dzkrM000Z0ludmNEN3prRTh1YmZocEgxWFBoOWRoK010eEJzVU5MQ2JWQWRj?=
 =?utf-8?B?ODJqU1NKVFlsSkdmYWhCbVExajFxZU0zU09kUGV1ZjNwaUJZS2FSdFQybHVx?=
 =?utf-8?B?Umw5VWI0M3RYQ0tLdUtIR1FBOXJvT0JLdFEyNnZlemRzWXEzZHllanBSdkxB?=
 =?utf-8?B?bHRZS3BaOC9OazQydC9HLzVOMk5jSWVsTDhxeWpqTUMwQ3RycVFNZFN3LzQw?=
 =?utf-8?B?ZkMrQzBnUEFSNkgzWFM5WGorZzFrTUk4NG5FRFFXZWw0VDlVTUd3dzJlOVpu?=
 =?utf-8?B?OWNPMVlYMnVMRW54NUJNdTc2bkV1OEMvN2hZcThBZHRjcSt3alR1cXIyVWdy?=
 =?utf-8?B?QlFIaUFMdHcyRURVRldoSWtmVlQ4K2FHUWRzandMUXVldFFPdHFsdndLSVg4?=
 =?utf-8?B?aWExUXljalUxclZUYk5lVE1RRlB4NTlWRHljUjRtYXl1ZDVpV2dYK01FUGZZ?=
 =?utf-8?B?Z1RKQUpLTHVxNGhacHpRMEIwMFdkRit4QmdNWlhmVDNpR0N2ZzNseUNhSm55?=
 =?utf-8?B?TlN1SisrRVpkUVhJcy9jMjV1M2dWVHNldnI2YndYVzVGdzBBMDJjN3J3ejFY?=
 =?utf-8?B?eXFTSHBSNmhzWVk5OE1NbGRTcFRESy9WeWo2VitZK05HSEpPUGNZOVpSb1Jo?=
 =?utf-8?B?aWQ1QTU0bmJpa21WRVFOazNtT01EV1gvVk9NRGdiZExGTytLSmI4azZpNmdM?=
 =?utf-8?B?MnBEczNLM1BpcFlXMXh6MnkzZmVJWDJjWTVFNkpwRUxGNzhPemtDUmhKdU9E?=
 =?utf-8?B?QmhvcWdQSkxZd2I0djJSMmVTbk03OS9ER0dZKzcyL2hqOXZORlllWWRSUCtt?=
 =?utf-8?B?Z2I5NUQvdkFhRnFjYy9oKzVYRzBzeVUvSHZnTVUwVC9kbUFObk1Nay9SVk5G?=
 =?utf-8?B?SGZNZjBGaGdweFY2dlMvczRIUGJ1YVduNjQremdDT2N0ck5ZbFlOR0lFOTlr?=
 =?utf-8?B?cXJhdS80eERnVkFqblloSVhwT3dVaUxFN2xIOWxqQnB6VmhQK05GdWdkdVB1?=
 =?utf-8?B?Uk9NZXpMRXViZm1PcDF1Y0oxRVdqY2xMa3dDOVFpc3hSemRVZ0hUZVp4S3Uz?=
 =?utf-8?Q?18OlDEDFXjfC+45A=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3cc6c5a1-c7f2-4edb-7af7-08de5a8a8b57
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 14:20:22.4194 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: D40c0EUqjlD214/upwuUae6UX2IdlTOIzDmvIxjs99hwctmNOTFOkQByv+3/hqMzQJa3orGlTSt7PudpuE4hY04O6KNiLvH2XYLzGp5J5L4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM4PR11MB6263
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:dkim,intel.com:mid,gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns];
	RCVD_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	DKIM_TRACE(0.00)[intel.com:+]
X-Rspamd-Queue-Id: E1E6576EEA
X-Rspamd-Action: no action

On Fri Jan 23, 2026 at 3:10 PM CET, Janusz Krzysztofik wrote:
> Hi Sebastian,
>
> Thanks for looking at this.
>
> On Friday, 23 January 2026 12:01:54 CET Sebastian Brzezinka wrote:
>> On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
>> > Users of Intel discrete graphics adapters are confused with fake
>> > information on PCIe link bandwidth (speed and size) of their GPU devic=
es
>> > reported by tools like lspci or lsgpu.  That fake information is
>> > unfortunately provided by hardware, Linux PCI subsystem just exposes i=
t
>> > untouched to upper layers, including userspace via sysfs, and userspac=
e
>> > tools just report those fake values.
>> >
>> > While we can't do much about the kernel side or general purpose usersp=
ace
>> > tools like lspci, we can try to address the issue with our lsgpu utili=
ty.
>> >
>> > Correct link bandwidth attributes of a discrete GPU card can be obtain=
ed
>> > from the kernel by looking not at the PCI device of the GPU itself, on=
ly
>> > at a PCIe upstream port of the card's PCI bridge.  For integrity with
>> > content of the sysfs and with output from the other tools, we are not
>> > going to replace the fake information with that from the bridge upstre=
am
>> > port, only show that port and its attributes themselves while listing
>> > devices.
>> >
>> > Since the tool uses our udev based igt_device_scan library for identif=
ying
>> > GPU devices and printing their properties and attributes, modification=
s
>> > that we need apply to that library.
>> >
>> > As a first step, exclude the fake data from being printed.
>> >
>> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
>> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
>> > ---
>> >  lib/igt_device_scan.c | 8 ++++++++
>> >  1 file changed, 8 insertions(+)
>> >
>> > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
>> > index abd8ca209e..7753262a53 100644
>> > --- a/lib/igt_device_scan.c
>> > +++ b/lib/igt_device_scan.c
>> > @@ -613,6 +613,14 @@ static void dump_props_and_attrs(const struct igt=
_device *dev)
>> > =20
>> >  	printf("\n[attributes]\n");
>> >  	igt_map_foreach(dev->attrs_map, entry) {
>> > +		/* omit fake link bandwidth attributes */
>> > +		if (dev->dev_type =3D=3D DEVTYPE_DISCRETE &&
>> > +		    (!strcmp(entry->key, "max_link_speed") ||
>> > +		     !strcmp(entry->key, "max_link_width") ||
>> > +		     !strcmp(entry->key, "current_link_speed") ||
>> > +		     !strcmp(entry->key, "current_link_width")))
>> > +			continue;
>> > +
>> Nit: This might be a bit confusing now that the return value depends on =
DEVTYPE_DISCRETE,
>> especially for a library. I know it=E2=80=99s extra work to keep it gene=
ric, but maybe we could
>> move the check to its own function just to clean things up a bit?
>>=20
>>=20
>
> OK, so you say it's not clear for someone reading this why the exclusion =
of=20
> the fake data from print output is limited to discrete graphics adapter. =
=20
> Simply because integrated graphics devices don't provide any fake values,=
 they=20
> respond with "unknown" which I see no reason to also remove from the outp=
ut.
>
> Since I don't understand how moving that piece of code to a separate func=
tion=20
> could make things more clear, I think I'll better provide the missing det=
ails=20
> about acceptable behavior of integrated devices to my commit description =
and,=20
> still better, extend the in-line comment above that piece of code with th=
at=20
> information.  What do you think?
Thanks for the clarification. I left it as a nit since I=E2=80=99m fine wit=
h
the change overall. My concern is that this is a library function, and
the update makes it a bit less generic. Changes like this can accumulate
over time, but in this case I might be overthinking it.

--=20
Best regards,
Sebastian

