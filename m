Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B019EA612DB
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Mar 2025 14:37:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B1AA410E9F5;
	Fri, 14 Mar 2025 13:37:53 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RzNPIQFr";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E665E10E9F2
 for <intel-gfx@lists.freedesktop.org>; Fri, 14 Mar 2025 13:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741959473; x=1773495473;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:cc:references:in-reply-to:mime-version;
 bh=xRy9lpmY5nd/y6rSiduI9lUOIqA8bjBrsMqe6/MDbcw=;
 b=RzNPIQFrxB+DlJ4fQ9jWMx5uQdKQ7AIeJFWdZK2XikvxDoVac3jo6Kzk
 Ef5/QELOGDvh7CQ+LNLPQx73YqEnGFbta8e21nf0pIL9hi2sdUBnu5NHO
 3yCwb9s6f0rrV0BDdDSJdJzx4i8gBjY37QPzXpx4b6gFui66SM0lcQDBJ
 IFoLsaxMEHaiE1LShV1ifnAeJz3vu8DNBwsCtcPeEtdHXhZHPoy7H72/b
 3Mhs1u8q0ZAtWRqsI+p0IYXDbIPsZaTvHCsbvQoWePQ0q+jEKpN0o/rmO
 rYZOlC0Zyb/vBhevkSf1lxLhwIo0h2KhkMwZOgnO5BSVr6tF5a5HQfWvg Q==;
X-CSE-ConnectionGUID: 6NlLcl84Rh+xo68TQzHAKw==
X-CSE-MsgGUID: 7fYgjsf+S86RgQR+VpKfXw==
X-IronPort-AV: E=McAfee;i="6700,10204,11373"; a="30698596"
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="30698596"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 06:37:52 -0700
X-CSE-ConnectionGUID: CGZDZPi8TQ2NXXD6XWGhqw==
X-CSE-MsgGUID: XXZSIjnET0KEOkvGaLkZqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,246,1736841600"; d="scan'208";a="152232773"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Mar 2025 06:37:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 14 Mar 2025 06:37:51 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 14 Mar 2025 06:37:51 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.42) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 14 Mar 2025 06:37:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Q+pQPvczaq8Vi/IgenYbqn2KLLYnfuwEGFxTEZyctwG1bYybK4ZfWd9V7fF3LN7V0aeFncWdxTE5Z0m5PY5s4fcGEpol3CyKVlv8h4ZdPq3zPeKH/a9/vubD0y4Ya2NDZ0uhF8WWMw3roJUg2xNQmaXhGVLIMkuI/5ztNUUjpHeP2HMFAB4IBBxlguCWuglHSZ7gBJmID3lGx1KvSlkFv6Frhdaxi4byt91u9lX9HkxOThLFWjLnbe9BYOLutfB9eXIYW2TppW+TigGcghDIoh+og9Pw8MqpbpvZtvDRjut7E+0tp900rJ/GnijLVn+vTSnwFWWtuwX29tKD8aGJfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xRy9lpmY5nd/y6rSiduI9lUOIqA8bjBrsMqe6/MDbcw=;
 b=YKusoOqdhv6Kv6zZzyh2ANhh65gX5rYXUZ/y4FK/f6wgRU5bvYUcZsc8qYH6vRToSt4bnNU2rWvYt8l3/eHB+XWAVMYC6FICgum8ImbHT9a93EhLUE7//VIS08yTGAiDBVYG4+//gIMVEBwzX38GL+71Glc4cOjMNirYHXPzop3sg6RBbpc4A6RyugKtGazfQ+6XheYGZxPe/pxVm3mpWL7/OQcgsDWb3sdQ33a5k8+LNmUObPdBkIr8fqOEW8TnT/CFJAu1p5CBVV+EaHtiXi3g+beZZku42kvug5CZdx8vNpf9NLmkJmsDPHp7eFfuC6EQ9oh9nM/Dxl6K3kMjcg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by PH8PR11MB6926.namprd11.prod.outlook.com (2603:10b6:510:226::15)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8511.28; Fri, 14 Mar
 2025 13:37:48 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%4]) with mapi id 15.20.8534.027; Fri, 14 Mar 2025
 13:37:48 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 14 Mar 2025 13:37:44 +0000
Message-ID: <D8G13EIBPVFY.1ELXE0E1D36EA@intel.com>
Subject: Re: [PATCH 1/4] drm/i915/gt: Fix typos in comments
From: Sebastian Brzezinka <sebastian.brzezinka@intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>, intel-gfx
 <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@kernel.org>
X-Mailer: aerc 0.18.2-107-g4f7f5d40b602
References: <20250314021225.11813-1-andi.shyti@linux.intel.com>
 <20250314021225.11813-2-andi.shyti@linux.intel.com>
In-Reply-To: <20250314021225.11813-2-andi.shyti@linux.intel.com>
X-ClientProxiedBy: ZR2P278CA0090.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:65::14) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|PH8PR11MB6926:EE_
X-MS-Office365-Filtering-Correlation-Id: 6efeee46-9b62-415c-e8f8-08dd62fd6929
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?MkZCbjlFVzZkUXpMVkQvUmkvOUpKcTJYU0JveVI5Tnh5NFcxeDJVRTNzdnlv?=
 =?utf-8?B?Zng4aFhKRFZSYjdVa1lHTnRQWWdKdS9rU0pBeFRxYzZ4T0NpSTlhaE1rNXlK?=
 =?utf-8?B?eUZsZllsQVJ5WlBtNWpGTFFjTUZaSG1DUXRaR0xzWWVNcU5NSWRjTUNkMHdK?=
 =?utf-8?B?SFRNMTl1eGlVZjVaWDhDcDJXRlNYWldNSU9YTFBjNlg2TTFveFRjVkdZMFll?=
 =?utf-8?B?SG4xUFo5NENJc2lqblQydm5yR2FLWXJjMHhYc0VhZVF6Ritva1QvVHNzNU9X?=
 =?utf-8?B?cHhVVERlb2hzMjlkanNWZjQ3MkdKenVRejNtbzMzdDF2YUoyWERSRkhSZUNQ?=
 =?utf-8?B?N2dpenRubzZUR3ptZUhiK3hTWGxNWkpxVlpkenE5ZVZ0S2lNOEd3cUprQTR5?=
 =?utf-8?B?NWdxMmlyd3VleDMzN0pJK1VsOEtNTzdVdEtqL04zUU1JWUJjNUN3MXl0MHl6?=
 =?utf-8?B?M3dGeG5WR1poQ0pIeGJxdE9GSHdiRUFlSGlWNGh4YStYRHNFWS84cjZHZndN?=
 =?utf-8?B?R21aV0Z6ZzBnenNLK0tacG1abjFqelpCUmdEVkVMWjQ5MXNXeUQxb0RRNXVs?=
 =?utf-8?B?OFR3QU9qU3BGS3lUdzZlVTVWSW5qQms1YllsS2ljR29XN1Q3Mkd5MVo1OG5X?=
 =?utf-8?B?SUlQTmRzVUJzcG9YNGJTTXJYNWJ4UENlZXV5Y0V1RXZnWWlJVDNrOFZtKy9Q?=
 =?utf-8?B?WG9VSGRmc0NRY2lQTXZQWmx4MFhrTzAvTkcrMkVPVlFUMVA0c0JsUzUwV21R?=
 =?utf-8?B?YWZDU2JwbEVSU3hha3h5ekdFSCt3NmM0RzRjbXdjYTlhbG1WZEc5Uk5NN2w4?=
 =?utf-8?B?RktJaXJkalA2bVhQaUMydlFwTG9DWHo4aSswMzhtQ1JUU1h0c0Q5MHZtSmIv?=
 =?utf-8?B?dC9YY3FuNjliZTJXN2FaWEdRYXMxQk5KNnpwZFFQeHZGNVBBU1hBcWdGSTFt?=
 =?utf-8?B?ejgxblpnUlNEQ1JtSlMwV01ab2JsYTdVVDMwWnBZR1h1YXJlK3cvS2ZpQU1S?=
 =?utf-8?B?RWpZRVY3YmVRV0x2bldJUGx5ZC8zU2JMODRlUmdWQmUyL0p3MU5MWmF5RHYz?=
 =?utf-8?B?NG9MM1JnSTJvVnhWdGFZQlVwanlIK1pIWHE5aEQ4SGFvN21lQUVjN05tS2x5?=
 =?utf-8?B?MHdVcmxpbnJaUE5RZFRSWjNtQmdFWnpmeENVakdqTi85ZXJaaDNGVGYyTGxx?=
 =?utf-8?B?VmFraHpiMkoyaTE1bU9uZjdiWHMwUFFoSmhYNUd4cVJPemZqN1VQMzBYa1d3?=
 =?utf-8?B?K1F0M0xkY0hHdk9TTnh5cFFweStRZnI4UnpEbFpaQk1lMTk2QkI4dHhZd1Jr?=
 =?utf-8?B?RnlNaWtJNDNyclFOekJPRXN2Yy9JbkxhcjlRaFFna3NvU01KeE1hUWV3YzIw?=
 =?utf-8?B?ZnRRb2ZTWk53dHpLd1pBbE56Y2trbEVuNHIyTnpwWkZaTmpXZGNnSHovczY4?=
 =?utf-8?B?dTNJWnVvUDBhUWhuNDVDU1ZHNmtRRCttWFVJNllqNEcyQ3MzMzRZdSt5RmZt?=
 =?utf-8?B?NlZrSVpXUlFNY3REdU1aMVRXc05tMHQ2Q1ArMGlxUnlXMFVzbUFKZHJUL3pm?=
 =?utf-8?B?NU9iOGhXaVJ1emMwM205cCtLbjIxcy93eGVpN2daZDB3eUhoZlh1VDQxcXQr?=
 =?utf-8?B?MFBJamw4aHVCanVvd0xaYnAzWktJWTFUWXMxbzJYekt2Q2k1SzR5WGhWZ0dD?=
 =?utf-8?B?a25remVZUzJ0Zk1lSjcycUpnYWt4dEZ0MFIvZ2k3TnoxS3AwSDRSQXlsd2w0?=
 =?utf-8?B?UC9TL3lmNUl6anRlQ1lrMEttQjRsdjVoTkdDc1l6cnpjTG5BR1FqWlBCNjdW?=
 =?utf-8?B?MGFBOXloR1BmQTdaZHhzblpoUEsvbEUvZGNrNVN0d2locTRvNE4vVytaTXlh?=
 =?utf-8?Q?9yzbk1NY9+C19?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NGJvTTNFT1ZQbFhyYU9lMjdOc1ZLQ3NrRnZYSk56YjJKNGRlZFZ6aGZ4QUVY?=
 =?utf-8?B?TThlbm1CQ3E2SzJjcktIZEVHSXptdUFIMXdSKy9Sc2dkaC9YU0dSSllMTXZV?=
 =?utf-8?B?R0NnSVdXajNlOXZxOVR5M3dWUURHODRrNlZOWDhSQlNKaWdEREM4a0FCdjRZ?=
 =?utf-8?B?TmsydUt0N3V1c1RsYW8rWThFR1VweUpXOHRoU1Z1WXRuVmYrQWM0YzRNQitB?=
 =?utf-8?B?clNZcXQrai9qTGIvWGZZZU1QbFpSZE5sdUE4T0VEYStJYmFOdXhsbmZwVnRq?=
 =?utf-8?B?VFY0OG1HNnJSa0VvLzZQMm1kRGNJeXZXbWFIbk5OT0ZMVEd6ZUVrQVFhVEx4?=
 =?utf-8?B?SHJGQXA5U3dINUUxL1ZkZlJDUnF4TzNJaGZ5QVAwdHJBbFJVdkNpd2c2YmM3?=
 =?utf-8?B?Z2JDTVJXU015YTJ6dDJKN2N5Ukw1NUo3NVM0S1plS0QwaCtmR3RZZFNzTUM5?=
 =?utf-8?B?MVhTRHhlbjhjYkVIa1g5d3JTZWY3cThxRW5KQktkdzJwTUpBT1NyQjc0Z3Fq?=
 =?utf-8?B?eVlzV3hYdWJzNTkvRFVWUmp1L0pUblUxTDJXWUExYUN0R1dpWGFxc0dNN2pp?=
 =?utf-8?B?Wk9BRzZjY0piN1gyc0htRXhDVlloL1hJaUhRM0V3dVFsSWIrWTZJcTZJeWN1?=
 =?utf-8?B?Q0VwNzBzaExEQlQ1MVNYeTRYck9FZGtUQVpsb1ZOY2dSUW10dnpJYXpLQ0VT?=
 =?utf-8?B?cHBvYTg0SDN0ZzRVQUQwREp1ck41SDg1NGsxRFZ6a0ZjYXQwT1JuNmZUZWJD?=
 =?utf-8?B?aVdIM2NkWXpRZVM1VWR3SWNkMEUvaXovQUVScG8waXNTWlJDWHNZY1BaZ1k5?=
 =?utf-8?B?NHoxSk1rd1FPWGx3WkpNek5IcTBRR1JXNVhwM0M1UWV5RmlxYm56SDJIVXha?=
 =?utf-8?B?QlN6RG5MWTBOMnlvOCt3U2FXaFpBc3lvU0ZlRnpzeHhzbDNyOWlUWDZMU1Ny?=
 =?utf-8?B?YVk2SThKcDZKaTE0dUxRcDdnT3Rtd0lYbStOeFpFZ3hNVXRIeVF6SmR2a3pB?=
 =?utf-8?B?aGRJZ0dBaU5mNEdxeUdEa0ozQ1NiUmt3MTFEUzFUeW5JeVg5ek1xQkNVS1o0?=
 =?utf-8?B?Q3huaEtvL3RwQmhCNmhTV3l0NGFyY2xpNEpGc3VBWGQyamFLRk91QW9zUFpZ?=
 =?utf-8?B?Y3daTVBIVkFPYng0NkQveDBBNTdLUUwvdlpnNjJmdEJXYVEvR2RGeHNWZ1I2?=
 =?utf-8?B?MzJIWVJpU0VFZHhzU0ljaUJ1VjhQODhNaVNCTks5UWNYRk9LT3JUTkZnM0N2?=
 =?utf-8?B?K3FtMDEzSFpld1kzSHQ0OFNQdW1DdnMzNVoxMTNqUDVjYVA1eWFXeG85L1hi?=
 =?utf-8?B?c3hkeitNV2IxTTJZeVYvR3lqdy8xU0Q4aDJwd1M2ZEVjeWtha0VXOENJTzFL?=
 =?utf-8?B?RmczZUtFOXNtMzFDMkk4em51b0ZLOCtRMEJDUzRTOUlKTnAwWTBzVU9QTE54?=
 =?utf-8?B?TjNUVU8rUk1hdm1COUJhdXhndHpISnpLMXFvcEpKbkVhOFZFUkZsMnQ3aWJ2?=
 =?utf-8?B?emloV0Jib3EyZjN5c2x1TWhFd2dxVERtREtYaVVMMituWFZKREQzbm5QMXdD?=
 =?utf-8?B?SGpmWTZhZkVLek9SVTZEcVFRU2orRGJkcitWbUJydzJZNjQ5YWJyUkpCVXAv?=
 =?utf-8?B?ZlFQYWt5MXlBdHZjMXRNK0lLUlNYNXFpSkZTOVhHNFBLTklPaUNtK3ZrV1Nw?=
 =?utf-8?B?NnR6U3NjN0pMVWNxNFNBc3BLSTZaZXZHYXhxMWJtbS81MFBmWlR1S2g5UUdl?=
 =?utf-8?B?RHN1bFNuVVhtSjhFNFpiV1pBRHpXc3N3NVU5eXFJbFFXVThhWXVnT0NubEJa?=
 =?utf-8?B?MDd4anFWTWtTSXh2cVhwWEZjcStHUXFQWE9OUDY0Vm4veVpQQ3E0aHNwNDZN?=
 =?utf-8?B?eGZWZ0dLT2RxU09rZE9zckRiWkZTcW9kOUFBK3dHZkdxSlA3RlVnOFZ0dE4w?=
 =?utf-8?B?VjZFemJTdTZuY1ZqTy9wY0t1NS9vMklzUDZ2ZFUwcHdKdFFxcERHcGxtU0hp?=
 =?utf-8?B?YlFBUmxTZUk4cEp0MzZmV3NmS2dFTU5GZXkwK2xYbmo0K0Z3NVh4VmVCTXBM?=
 =?utf-8?B?WHNLaEpiTHBMaHBnRmdkNGdDcnRvSUx1YUZNWXdKRHdBa1Y4QnYvNkRjY0ly?=
 =?utf-8?B?cmluVXU2M0R4d24wSTB3RHZtZm1kdGlTeWhPc1ZTenpqa1EzdEw3dFBGaVRa?=
 =?utf-8?B?QkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6efeee46-9b62-415c-e8f8-08dd62fd6929
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Mar 2025 13:37:48.8201 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ji5/48GIbby5hUVGlvlxFvYb8uzh8p9gr09IxpBZ5di6vrDpX7bMxFbKesxnAgCdOhN08s2ZX+O+ROtbs14MWwKz/KpcKL1o4f+BIOH6OFs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6926
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

Hi

On Fri Mar 14, 2025 at 2:12 AM UTC, Andi Shyti wrote:
> upto -> up to
> acknowledgement -> acknowledgment
Both spellings are correct.

--=20
Best regards,
Sebastian

