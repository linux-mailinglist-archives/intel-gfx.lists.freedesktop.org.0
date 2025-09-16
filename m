Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3349B58E7F
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Sep 2025 08:34:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3D310E677;
	Tue, 16 Sep 2025 06:34:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g9vv/5nE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0BC4610E677
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Sep 2025 06:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1758004491; x=1789540491;
 h=date:from:to:cc:subject:message-id:references:
 content-transfer-encoding:in-reply-to:mime-version;
 bh=RrMz0CJaN6jZfdyOZ2m4URcsaUvETS+viMRCqLPnsvY=;
 b=g9vv/5nEj7h5gC9WE6WrswTGTGgdstzF7zf/5qUnfrzBiV/53JgVq56S
 Vsg8cLrj8PvVm7vk5MaagdSLQrEtQhOGV6kWKgr+ZIE1C5FHpDlgz8dRK
 766O8U+NkLqued5k2PgVT6QWiDecrYSrLlPzziuM8rdo79slw7EtH56Ca
 B+X2614o2n6yspYfYAy1fk9lx0nyBT7Go1+BG8t+bqRIZbWaR+T1S9XHj
 1AYop13MpOFbFJpLbhm1lUKU7U1lvJ8Z/Wgo5hu1539t/v4iqiEdZC4pV
 Rt1xeDgPTN7Fp8KHKL5WYmIdluqZqcarWnStsxauiJQystNuSN5TJ874o w==;
X-CSE-ConnectionGUID: 249eQQQVQUqcRdfnbY1xyA==
X-CSE-MsgGUID: 2AuK1glLRdmh5wjMyPsUuQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11554"; a="71643010"
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="71643010"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:34:50 -0700
X-CSE-ConnectionGUID: shzfryNyRImCtOrEYxdj1g==
X-CSE-MsgGUID: pHw9VCDlRw+vYVB8SbTUaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,268,1751266800"; d="scan'208";a="175282304"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2025 23:34:50 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:34:49 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17 via Frontend Transport; Mon, 15 Sep 2025 23:34:49 -0700
Received: from PH0PR06CU001.outbound.protection.outlook.com (40.107.208.5) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.17; Mon, 15 Sep 2025 23:34:49 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=aK2xmzPn6KI8SKtFhuFOEJdBatIT5T0DkXGPhh9MlhnX9sXTF4ewVYv0x3HYmd9WETbfQSUHMj5aeLS3UzxZHOzmInPcjzTP3eoJN5QFkbn1BS+NzxAiBepXUqWJY3gU9sJ47+qtF6nZ64jeW54TF7SfkMdFTz+DBppbyEeovBCCOvqLM/A4MFf3H5hxCM7k0QtwZjpkRr+DXmitcB0vst9ae0RAlbNVAJBJXWO/cZbXCPrm13SzT1zOigdUwO9oscYmE1OQh2osVc2+1zTqIxZzHCk64fOB0m5fFBOCWkDvVPe2DNN28NZ2l812EHEbYas1lZR2FfmApDw9xdJugA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sdiCrpF2x3b6MQBOGysogC8HoeQ2jS2MzmmQcQaQyIw=;
 b=kluXgwXoV9u/YHlFnoqvn3JRKZvGr6Hor9R5TJc7Tq5HRGMGMHh+GCeWrHrVX6CaKfiWHJ3dxsNbZu6Ydq6rIdfjksYuoWLiNcKy8oUIghlksgNL+9oIQY5zuVR/AFzT0+OoX3Y8vn/nfYV73COBCmTjP39SVc6TsT9I54GOHiHHvzUTR6BkY/bMZVLVoWp8yK6iirHhFPe90+wsKcuKdggawNDEYPEdPqpbxbYeyrn+0TNWkHWWGMNKimz3brLrAjlyqZVxnv68EKNq7DNsEfWII1gIDuCwkl8dkUzh+tunqDLv+bZOZniIrh0fMNtK3/RvAz7eC2rrTsPurPMrsw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW4PR11MB5823.namprd11.prod.outlook.com (2603:10b6:303:186::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9115.19; Tue, 16 Sep
 2025 06:34:47 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%6]) with mapi id 15.20.9115.020; Tue, 16 Sep 2025
 06:34:47 +0000
Date: Tue, 16 Sep 2025 06:34:41 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Jani Nikula <jani.nikula@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: [PATCH v3 4/5] drm: Avoid undefined behavior on u16 multiplication
 in mipi_dbi_dev_init()
Message-ID: <04a8d5e486053f759aeaa5c03e78e93de6f80b09.1757576103.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1757576103.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <cover.1757576103.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: DB8PR06CA0049.eurprd06.prod.outlook.com
 (2603:10a6:10:120::23) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW4PR11MB5823:EE_
X-MS-Office365-Filtering-Correlation-Id: e9e42d62-8c73-4f65-1225-08ddf4eb2155
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Zk1lVnZzR3FjRnZFVEpLb2VtZytrNVZ2RFJSNkNGUndDZitxWWMxUDQ4NEU1?=
 =?utf-8?B?TkMzSmNiazFiUERnZmZYVTlHN2dPbjNJQVFobDZvNVlhdjY5KzZuUlpQaDkz?=
 =?utf-8?B?RWtoQUJ5YUtITGlPZ0V4UzdxY2xSc21KRllFcFdBWkpMWkZRMmpCVHdla3Z2?=
 =?utf-8?B?ODFwZ2E1eWhqK1EzdVB2T1RlVDFaQ0w4OGRnS01QTWNySGNmeUs0Yk9lOGh2?=
 =?utf-8?B?N3RiWVBvdlJMNmNBYW5odmtUNWtDaVEvOWpIWFlUdHlUTjJKNHdQVmdicFVu?=
 =?utf-8?B?U2NwaDUwcHZweUI1N1pseVRFUnh1b0pXaHE3bmY2R3JDOGVuRi81THBDVXhR?=
 =?utf-8?B?bzZ1dC9EY3ZkMUw3NFNNWWgwWGc0RjJFdFd6V21hMkxGTGt2Wm5ueWlpRndh?=
 =?utf-8?B?TnE5SVhKNlF2ZTdmZi9NbnMxd0JkVEtUdExjWkZmUmgyOEhldys1Qzg3VWow?=
 =?utf-8?B?ZkFiLzZxOGY4ZnM1SWVXc2pCakEyWnZtTEZSWERiQ2J3S2UyQld5ejFVeTB2?=
 =?utf-8?B?S0FvQnIxSHViallDVVJEQmQ4T0FMMnl4WVcwWGRnRWpLenlQSUo2alNPWFhn?=
 =?utf-8?B?bzZuVnRMK2JoN0VBNEVXU1hiVUhPaW5hZnAvbk9STkRGNzhrU0pRSmpmcG9M?=
 =?utf-8?B?SUFvUkJ0ZUNuNGF3MVlZaGRjYVQrZ2g0S1dkQmJtK3BGUUF2VWI3NURUd3RC?=
 =?utf-8?B?VVJrMnNEMThsVUVHS2d2NWF1VFFIN3pldWZzSnEreng5TExpcWM4Rm5BeWhD?=
 =?utf-8?B?blJWSmhreVdFejR6TTFBeHFTSjhJRUdjMGsreXBUK3FhNTZMb2V1aG1Ubk9a?=
 =?utf-8?B?NmszRnN6U0ZmM3l1ZXFWalViWmU4Tk5UTXhlbjF0cDhOOCtYZk5qdGh4WjR4?=
 =?utf-8?B?S0ZpMDhGTVgxc0NFMzhyalJmdW1WM09sU1dWa0VjaWhEOHh4bmxsSE1XOEE2?=
 =?utf-8?B?cytoWjZlUlY0RWFIWjVzeUQ0U1JJbkVFYXkzaklqODBlNEN3dzNrNk5rc1pQ?=
 =?utf-8?B?VzlKZlY2cDE0R05zcmQyQ2wrRGhNYmlLbVVNQmVNbXJ6aVh3Q1MrZTIzMGFQ?=
 =?utf-8?B?QlAzVnhLZWtrWTY2TXVXbXB3Zk90V3NNaXRHbjJSdG9NYTJiRldndy9yU0Fw?=
 =?utf-8?B?cDZjZmx1UlVMcTR4SndncFAvdjRnSFk3MzFqeDVRUXZFK1VxNzZvOXY4NThU?=
 =?utf-8?B?TTFtNWZIVmwvUUtxcTZoOUtVVXJoK2JXUmVCOGh3TVFHdWpOc0dJR3hPcDBJ?=
 =?utf-8?B?TG1lTUZWYWU1cnJLSjBlU0Mxam1lNWRYeHJuVEJYWFFuNC91blJaM1dLWTFm?=
 =?utf-8?B?bThEMWVYTVZCRW04eGVLM0lmQXEvZGR4MHlHTzdkMmJyMjEzUnVBOGZDYlJi?=
 =?utf-8?B?WkViK3BBWjNFYWhJbVkyWHlqb1BUbmJRcVBuMktQWnlOZS9sQnhkTzZuaEtG?=
 =?utf-8?B?Mmp1SWNZTkhUd1BreUdsN242b0JvYWFzYWNNS1hLY1RHTy9QOERZZDltQi9T?=
 =?utf-8?B?VXpjOVZKcG1ybmE1Wmt3SzQybDVOQldtcXh0bDVFQzBVN05VOHZEZFFrcmNz?=
 =?utf-8?B?UGFOY1dwSkN6K0xZQk9MMklFd3Q0TzJDWVVtL1YzWE92QWt1VU1IcGwreE1N?=
 =?utf-8?B?d1pwS3RQdVdxcU9WbGQ2bGdmYUZXRFh5Ymh1dXFzd3pXYVBLQnc0MVZDSUo2?=
 =?utf-8?B?M3lmYXpINDRGSkN5L2g1TXMxbWtKcjJTelkwbWJSUHpBUkhDVFVoRDBaZVJ1?=
 =?utf-8?B?dk51MndPV3pXKzY2bFZWUGRCS0oxbWpQWGlFUmZsbDhZT2VISDlzU3hSQi83?=
 =?utf-8?B?TzlPTE9lcjN5STlYazYvTEZWbml3K25ibk5ydUhiSWZRdTY3WU1XMzhwMGgw?=
 =?utf-8?B?TGZLYmQzMXJ3eGRhVklrZHZaQXlUbktXb3c4N0duclo3b0xNQkJXM3NkS3Y0?=
 =?utf-8?Q?ZOfD3kbtavU=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2lHb3JQK2NDeWN3b1VSdDlnd3hEVjlhdTk5bmxiWGNBWjhoR1g3QjZLMHZw?=
 =?utf-8?B?U2FsYWg2Z28wUDdidHMvVHRoSjQ4ekVIQTZZV3lTMERzVkNFNzdoRkFwdmtk?=
 =?utf-8?B?UmkzQ1U0aXhwNnBDaG13c1VkOTNtL0R5QlRvMnZXTlJCWFkyaitjRjhTOStX?=
 =?utf-8?B?LzUzTU5sazdlN0g0WWpxL2lieDNodTVBTWFON28rSzViSmw2YllsSzNJZS9B?=
 =?utf-8?B?SGJSMldIRlZFNzVkZkUwbU44SVNKY2p5SG42d0lEc2hlVDlldU81V0h3cG50?=
 =?utf-8?B?b0ZnZzRMSDJmQjh6SFo5UUFGWERPZzQxZ1BoZ0xja2pjRldiVEVPeEsvR0pZ?=
 =?utf-8?B?Si9tVGt1dHlITmFQUmJjRS9kTnUxV3BiNDE3V0I1eUd5d3FCTE9IQTNobGxK?=
 =?utf-8?B?ZFRFeVphN3E4dGd2enNRcHNLcUJXZ2VBZUdJZHlZUUJzeGI1clNaR1JLWXEw?=
 =?utf-8?B?dm5NSS9JOXM4SHlQRnpqdTEyNjl0SmovZ25LS1BoWDNZZVBpWnBuelBWZVZx?=
 =?utf-8?B?elRsdUYxZUp3ZUk5aFdmT0VyMGl5RzJHRFZYbTR0RnhlSUVyeEhhSVltejY4?=
 =?utf-8?B?YVBUcnlqWnNxSWxBSDF6eFRqUStVMkRwVWdsVFNQQ2s5dDZ4bG9oejF5dkhV?=
 =?utf-8?B?THNsTWtzZ3cyaFk0VWhsa0pESlorcDJldGhDYzhVMHFiQ2JsUVJOWDFhNklW?=
 =?utf-8?B?NXhSZGE3MWpzTGxLWG1YUHFDWTN5WXk4cVd5c1ozYlBQaGYwZjVGai9vdFJN?=
 =?utf-8?B?aGJsR2htY3hnNnJvbmlMdlNkQzA3ZlplQWZkZ3pXSTBwajcyZXJ1SzNRYy9V?=
 =?utf-8?B?RlZqMUVPcWtmTS9TSDlmT0RMUG5Jdy90c3Vlbkxtdnh0RHdQNEVpZGNvNG5h?=
 =?utf-8?B?WTFTOUZZTTFVMWM3YzMxR0RkVjhKTlZGcU9GbkFjY1QrL0ZoU2MwZVVWbUZL?=
 =?utf-8?B?VjBrdENaT3JDekN2aG9KR2t6cVRXL1hEaHRBWlZsOWMvdjltRHBvd2cwTzNq?=
 =?utf-8?B?cnlrbUNXUVgrOTdaRmxyeFp0M0pEZnQ4S1pSTWovYks3bmU3QVEzMjl2ZTFF?=
 =?utf-8?B?VWVyTm5IdndnYXNCOTFnd2JjNXEzYjgwd3lsWjR4TENrWnFtZHMvc295alc3?=
 =?utf-8?B?L2Vjc0ZseXNtaFQxbFBwZ09sQmJVdml0RnZKbFcyV0dudy8xMGp5QkRYaTl0?=
 =?utf-8?B?cXFYSENpNGFmWnk5RmQ3bVFCaDRvdmFOK1lzdlNIbTBxS21WQjhiUnFxV3B4?=
 =?utf-8?B?TWU1clNvTFltVlYyc2ZqQ3UyOXRzME00UXU3aUI5ZDJoNHFiWWNRMFFYMEFq?=
 =?utf-8?B?WExEZzYxSzByd0Q5T3JvTm5rdXR2MWEwMXZFc0RzR1pNd25Cd3RVU1BKSHBB?=
 =?utf-8?B?Z0dMaENIcnd1SlFRT3d5bUUwenI5amoyUjV6QmhFRnlJcDJvQWEwZkdGa0lO?=
 =?utf-8?B?Vm5ON0FXTkxxNk1wUW9TRnl6U3NKbXJRQjk1cU9WZmQ3Q1o4c3ZSQ0RnZE9L?=
 =?utf-8?B?S2dHcDJaYkcvMXBFYllRdlFhMmRyVzF6Q1k0Z2prMVlrZTFCNmZTcDNPOFJt?=
 =?utf-8?B?MHpWeFpFbSttaEJDVElBeWV2eUlVT0hmcVh1TUN4bFQvUGRscmxKakp1a2NR?=
 =?utf-8?B?N1VnODRpVGJld2puL3ZEU0w1cFNPQk5QUDBLZVBKakRzbnBMMEtIY0x6dlBs?=
 =?utf-8?B?K2laUVBoVkhPVlVCbGZtZWVrRDA4UWRReG5DZFJyTUYvZDg4UkVkeGZleVBB?=
 =?utf-8?B?YzVzWGU1bGRXbDdvcDNuTUhzTkRRekdxa1J1TzdPMXhBd1NFcnN2VnNPREFB?=
 =?utf-8?B?SHh3dUJNVW5jc0tOdTJsS0FEdnlnU2N3MndFUVQ4MzNjK0QwNWlCMWhvNGJF?=
 =?utf-8?B?dGNBTW1jWU5UaEJ4RUx0ODIwMkZaQmxGMnMraGNUS0hIRERrU3dVbWlQaU1C?=
 =?utf-8?B?Q1E4YnFyclA0M2NRVDBxeVZIeDdZbEtIL1M3UnFoODFwVTN6NTRyOHBET1BQ?=
 =?utf-8?B?TXphbnF4RVBURGZDTURrSXUwSVppd3MrR2tQbVBWcWgxQ1FuZi9EMFZUWnNH?=
 =?utf-8?B?Wmo5Mm1RVFJmbFRWNWw3eDJiZFFIbzFFNkdGWUVoa1g0YTh0T0JYSUdQNy95?=
 =?utf-8?B?RytsTTZqbWtRNzhaWkltUWxBTXhsT3dwTnB2dk9aeEsvWjdKdFkxOTcvcDhK?=
 =?utf-8?B?dlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: e9e42d62-8c73-4f65-1225-08ddf4eb2155
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Sep 2025 06:34:47.2018 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: j7ZHhCVvbCG3ph0svCgDvKY2stG0tm4YFns/y0PNYzXuxFm3bMf0OlR+91nOu9cQ8uY1+8qi9aDy7QVeafXgLCqp5xViMdvwZRT+ukJHuWQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5823
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

Fields hdisplay and vdisplay are defined as u16 and their
multiplication causes implicit promotion to signed 32-bit value,
which may overflow and cause undefined behavior.

Prevent possible undefined behavior by explicitly casting one of
the operands to (unsigned int) type.

Fixes: cc4312127108 ("drm/tinydrm/mipi-dbi: Add mipi_dbi_init_with_formats()")
Cc: Noralf Trønnes <noralf@tronnes.org>
Cc: <stable@vger.kernel.org> # v5.4+
Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/drm_mipi_dbi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/drm_mipi_dbi.c b/drivers/gpu/drm/drm_mipi_dbi.c
index e33c78fc8fbd..536741dd7690 100644
--- a/drivers/gpu/drm/drm_mipi_dbi.c
+++ b/drivers/gpu/drm/drm_mipi_dbi.c
@@ -691,7 +691,7 @@ int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev,
 		      const struct drm_simple_display_pipe_funcs *funcs,
 		      const struct drm_display_mode *mode, unsigned int rotation)
 {
-	size_t bufsize = mode->vdisplay * mode->hdisplay * sizeof(u16);
+	size_t bufsize = (unsigned int)mode->vdisplay * mode->hdisplay * sizeof(u16);
 
 	dbidev->drm.mode_config.preferred_depth = 16;
 
-- 
2.34.1


-- 
Best Regards,
Krzysztof
