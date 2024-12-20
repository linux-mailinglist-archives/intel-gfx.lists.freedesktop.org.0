Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ABA39F9360
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 14:38:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E56AA10EFB5;
	Fri, 20 Dec 2024 13:38:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="O1kz7fug";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A70DC10E5EF;
 Fri, 20 Dec 2024 13:38:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734701884; x=1766237884;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=tvcp+HFnjvirslRMpWQeDDFymapjoiJxXo1G5NAmV+A=;
 b=O1kz7fug5b9BpcpBc+J5kNlN2HSnYKKSHCGR/N5CkYkS3E/Jaj41vHfc
 5Blw4lPhxz4C+zyGY3woM7iF0UJeu6gFj7U+ImRVNtUTUAwFhWSueLAs4
 eAxuBXfhm2tQm92dInnVhC2c8aiXBCvFiaF785tGpThur0f0BacGIty8G
 giEWVbY15OH3fsKuGJd82XYvu0PcWXflzF580mDFHbSNhSMd4B8KIBRQj
 ecRf5afQFZcjbVhmmOEpsISW04zvF6K868zVB/1EN4B8lGfqqlNA+dsgJ
 8hL5KPu3LK+uVtTHzQWMDvJhKxdJL3i8E9fVjGLJ9zzPMv6sqCeaCLdMN A==;
X-CSE-ConnectionGUID: 1riphcQuQvilK5rfGemL+Q==
X-CSE-MsgGUID: MLeHfEK0TTqFO8CFXVMAdA==
X-IronPort-AV: E=McAfee;i="6700,10204,11292"; a="46257307"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="46257307"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 05:38:04 -0800
X-CSE-ConnectionGUID: IQt+KDImTfOCPqt+GdhEvw==
X-CSE-MsgGUID: XZPJjlg5S22eAzi7HAmgRg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="98348126"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa010.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 20 Dec 2024 05:38:04 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 20 Dec 2024 05:38:03 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 20 Dec 2024 05:38:03 -0800
Received: from NAM04-MW2-obe.outbound.protection.outlook.com (104.47.73.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 20 Dec 2024 05:38:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=d/S70VVDiCtt5wuAvFdqPlUoPDmR7oNB9axnGU1gBWbqIhWkucuJs9lMD3mrsB2Mye/ybznmufiFBsl8lrmAYHc3GErgd85Zwk9iVGiReNGR84neXyQoSJnsGxBd8882GCqltpwTfHqhuOJlrtXfAP7FX7dMkaSl4NahIukaKKcYrtFT+lgpYhq4X1zYeGa/btB662I36XF+RGAvc0SalGuk7/H1FxZQv7kWtuCyef8D5/yn+9TJYzon4oQXMLdpENbtOb4B/MyRgL8a0F+FTxBlcEK1QvUy6pFiy3hA/bBlZedLDrb31nC/7HFVuQGYU16jHZZogYlKcyvkM4Z9sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=y25xH5cvznWabFil8Ip7sOfTRuQhmL9DmPptIDS36CA=;
 b=ceettYzh/2NwiHKVyG1vCpF5dg5oQ//i3cfHlkHBVkyeKKapJ08CZu2kTpltwEl9A69Mv25PpZ9IYgwKPDB7QqqkstPLyWbOfWZI04FdZk/YFJ7RXWdCZuhZSpsjlKPwIZnD2kt7erzkWCVKmNkZfAGJp5A6ZMhgea5nZzEFLelFC0OjrmG9zD6Yymg43a5OTrhilgUEyI2nNZ+JjfBm35FEAWS6MZxAxxEbRBLckiCpbJG0L/fGvIfnbwwHUsdK5qfp4fRFs/H1Aebngv3PGmdPQpTwLbriXo41DSPH8tyoiJniD2aBj29CzU4dXpy+Tq3wYAP77FGSGwBUj1d9dA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by SJ0PR11MB4861.namprd11.prod.outlook.com (2603:10b6:a03:2ac::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8251.19; Fri, 20 Dec
 2024 13:38:01 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::7e8b:2e5:8ce4:2350%6]) with mapi id 15.20.8272.005; Fri, 20 Dec 2024
 13:38:01 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <Z2U03bMgwHMvapu-@intel.com>
References: <20241219214909.104869-1-gustavo.sousa@intel.com>
 <20241219214909.104869-2-gustavo.sousa@intel.com>
 <Z2U03bMgwHMvapu-@intel.com>
Subject: Re: [PATCH 1/3] drm/i915/display: Do not assume zero offset when
 duplicating global state
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>, "Jani
 Nikula" <jani.nikula@intel.com>
To: Ville =?utf-8?b?U3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
Date: Fri, 20 Dec 2024 10:37:55 -0300
Message-ID: <173470187549.2440.14576361987578449633@intel.com>
User-Agent: alot/0.10
X-ClientProxiedBy: MW4PR03CA0104.namprd03.prod.outlook.com
 (2603:10b6:303:b7::19) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|SJ0PR11MB4861:EE_
X-MS-Office365-Filtering-Correlation-Id: b73858da-889c-4d4a-7a19-08dd20fb85ce
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?a2pBdFZSSlRHRmphV3Vzeit6T2xVNEtzZmJGeHZHaitwZnRIV0p3NEgza0ow?=
 =?utf-8?B?Q0Z0dEtZR3lOSVRDZUh1Ujk2ZmVvcTVlQ1BERUExNjF1Unh1NEl1R1BIWkF4?=
 =?utf-8?B?NC82TzR1YjJRL1Z4TEFpUjY0U3p3blJUOThmTXhUOFhLQVZ4NGtxWHlFQ3kz?=
 =?utf-8?B?VU5Xa1FwVEtETmh1cWNYNm1QdU51K0tuSmpML2hHZzV0bThJTllubllGQkd1?=
 =?utf-8?B?by9DYVF1Rm1OcDdGR2thcDB5a2JZYmJzejdXcHpEM1ZZUmRIOUMreGFvZ1BN?=
 =?utf-8?B?WWJrb2NDRUxiYzlsb2M2V0JaMnRQOGVlZlhnVVdjSExBdUJZSEFUMXhvRjEw?=
 =?utf-8?B?Rnhob3FPdWp4SVRBUTQzNHV4QmVRem1kczJTSENZOEdyYmdZb2U1QXJZbFVE?=
 =?utf-8?B?YWdBeGtINUJLdmdxVzZ5UTBoRTRIVXFsa1hUV0lnbzhHNkRtMVljQmZKaDdn?=
 =?utf-8?B?dEUyRE1QakgwWUs1Zk9JRWRZNXNhdnFpTnJMVXRkUFdhcVBubSsrNjZNOTY5?=
 =?utf-8?B?amI3K2M4a3hDSDcyNXMyQWZMdVFvbDhXUCszR1RxbVB2aXczZ21xd05TeWw2?=
 =?utf-8?B?Y0RsdVVkRC80dm9EY050b2VXeTZDenpLQ2pPVDRPN1Q2bDJ1enF3UTd2ejc0?=
 =?utf-8?B?YldzSC8zL2ZnbHo0SlBWeUVXYkZMVG8xVmhyaUtDMGZoVU56ZU5EV21lall3?=
 =?utf-8?B?RDFpS3gzOFc3RzJvT0ZLd2ZUTnVLekpsa3BGM09aTDVoclFML29VNEVDOTls?=
 =?utf-8?B?TzBQYjEwSkM5UUl6eVFwUVNxUzhpN3BJYWY3aC9meDRnZXNaRHd3K3d2U2tL?=
 =?utf-8?B?dGxGcEVULzZkT2tJOUZSTk8vUXVYVFozcTFUQ1h5eXMvNUs0TURodUduZ056?=
 =?utf-8?B?Qk5ZazFhRDk0bmRpYmY0MlJhbDhRMkNWQ0lFMEpzMVE1Mjk0emFFU3dQYmFX?=
 =?utf-8?B?ajcxc3MvRDIxYmNyamp6dnczTWRST0RHTUdReWhuR1FHajl5UmpaTHJtQnN1?=
 =?utf-8?B?Q29DQlJFejl3cFFzcDhYNUFDa1RGa0dreHZXWUFaZzdOdlVqQmdqMWRmUyt3?=
 =?utf-8?B?Z2hCamZXdnlvbCtMOUVyeFh4SVlFb3pRTkUwdU5lSWVTc0NNcDh0bHRWNmhi?=
 =?utf-8?B?RDRiQlZKQjdiZ2dhUGVmQjlYWURBUFdTWGNnRGdpQXlDQWhRdTA4MVJwWXRy?=
 =?utf-8?B?czFuZEpwNGF4SjFZdEN6TjlEV25ScTRaWjlaZU5XU2pnbjJzeURYWkNVVkpz?=
 =?utf-8?B?NktqZmkyV3J0QlBXRzBlL2pyQS9CY1I3L2xob1ppS3kwNUQ5WVY3U2xxcElH?=
 =?utf-8?B?aXRSWngxNlprcXVBdXdDSWgvQkw1Z2VrZ2RsWHl6a3loQWo3THdpNkJSVGVt?=
 =?utf-8?B?Wk5uWG1ocFp1cXMzYXJJZjh3TG0zSDN4T2RCeGczTEhsUEdibFo2YjF4WEdh?=
 =?utf-8?B?UXdrck9ZbmdCRnY5VmZQNnVkSnBUSmtPV3V3T3NHdTVsRkNYNU1rVWIvUXYw?=
 =?utf-8?B?bG53N0wxTlVJY09pWXBneEVHdU1pUVEyQmxjcmNmU3FKZ0xsaTdjcFVJdUd5?=
 =?utf-8?B?MWkwNzhmUFJXbnBLeXZrVnpmZTFRZi8yb0w0L2xDYTNnS0xlL1U0TXBGZ2hi?=
 =?utf-8?B?cHY0c2tIbWNxMVpDYUdYQUM1clA0RUVtWTRCNWpVSlFPeTJjZTFkNmRpYlhE?=
 =?utf-8?B?RmZnWC9oNzBZbVg3clpzWjRwYUViam5MMHZhR0k2ZWlVTU84NURvK29FNnNQ?=
 =?utf-8?B?L3JPcXIram1FZXBYSHk4YUtXU3M1M1ljc0h4anJjQ3J3VEJleGxhcmZLWERr?=
 =?utf-8?B?eFdEQzJQeEdTdElnWm1PVFozSC9vdURRcXlLUU9oU1dXYkoxUzZqSkVwT29p?=
 =?utf-8?Q?G4ckKTrPq+Or3?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TVlDdTRDdUgwNmtaeGFScU81Z0YvMjV3bXQzcll4bCtZdDR5NVcySld6dHJM?=
 =?utf-8?B?UVllUytaOHcyU3gvcUpvdG12aXFsaVNSaVcyb3pKMkJYVUdHUktCZE1HLy9W?=
 =?utf-8?B?ekN6Q0gyZGFOZy9HZ0hGZkI3MzlGOEdrWE03KzFhQTA4WHMvckFwNXZaTFNH?=
 =?utf-8?B?RU4rdytmV0pzZWVETTVqY215ZEE2dU42ZXhuNnd0ZlNqSU42TGJIRjlNUW52?=
 =?utf-8?B?L0NVY0Q3MW9xVnA5Qnp0MTNjaGJTVkl5V3FwckpPNy9JYjg0VDZpK0M1WVRG?=
 =?utf-8?B?cGF5RUY4Z3lTN09hNEtmSGFHdUZuYlRlKzA5OHBpa0x4Um0wS1BJTUtxNlpK?=
 =?utf-8?B?azlHZEwyeE5wL2ZVcm9TV1BvVDRuMjlWTHVoZWtyb3hKbWhMZU1SUmtSTVZr?=
 =?utf-8?B?aVZLZ29wc0I2QTRlV1dBZmdKbVo0WEJaNytKU28xQU9NZ1pZaktWcXI1a2Nm?=
 =?utf-8?B?KzZSeG5hTkRLc21VZXVMSWxiQVZZWmJtM3czNExTSHFORnA2dzZ4NW15WjJl?=
 =?utf-8?B?c2tCcGVtellXLy9RTVRFSmk5R09xWHAwdkJTTEphQXRIaEVGNHA4VkIzNG13?=
 =?utf-8?B?cHdCQzk0R2tkTGY5Y0tiM3RCK0M0dEpTS29BYXhDbDg0THZnRnR1d0pVUWIy?=
 =?utf-8?B?Z1JDelRXRGNvdHpJNy8rdkJMeStEa2wrVVArUlJUR3lvZUdubkFOdkRwcEJz?=
 =?utf-8?B?bDJKRU4yTGk3Ykw2bEptVzVhOUZCbWJ5SzVkVC9RRWZwUTBWQk15djE1OUFB?=
 =?utf-8?B?Q2dORFZCaGc2elMzMDloakxCL3hmdTlRUE4xYmxCa3c0RnN3RW9WZGt3aDNx?=
 =?utf-8?B?bU1CRXJqc0dJVEh5ZTZrbjZTOG03QWtoa0RyZU11c1paTjRwdTB4VmswOWJZ?=
 =?utf-8?B?bGEzNzN6eG50WFhqdDZEeXRLUGNhMnNVeXlWSlZLWSswRUxUdGFKM29DblB1?=
 =?utf-8?B?UWZoTTIrODE4KzN1NlhRbGRaaGtFZXUvNmdmZ3RXTXE2cjJhbGd0Y3hwUis5?=
 =?utf-8?B?S0VjWUtpMG5MZC9xSmMrSDlIMWU1eUswSENNclVSajBURkxBYWFSaTVoM2Zp?=
 =?utf-8?B?dlZ2UUFFOW4rT0RycE1xRzhxMFhrVVl1TDk1WHdubUFHNW5lMTVrUndpYkNJ?=
 =?utf-8?B?bHZ5VnY1bHF3bXdDRGV6bUE5SEFhMTFvY0JDTU42MmpBYkt2UktkRGxuZERW?=
 =?utf-8?B?SENIbXNqRktUcWZGQklTL21ROVhIT3ZQVmdVeTBpWnYrQmhCc3EwbXJUdjZM?=
 =?utf-8?B?ck1CQ0c2TFZVeitNMUVUZnlVL0RTb1E4YkkwVy82M1ByTTg3M3hXZGkxakQr?=
 =?utf-8?B?Qm9BSHU0eFZYQ1R2WXF4ZUo3MW43c1lTZmR0bGtmdWs4TFl6NjR2MlRSN2Jz?=
 =?utf-8?B?VGx4VER5S05Rb1JpTUpnc0t4dnlXY0svNFpFUWFXYmUyRFBHa293N3l1bFNG?=
 =?utf-8?B?aUJGQklUTjNrSGY2U0FiWjNOK3I2T2RKVENRREtka2QrUCtXVittRk1ZQkJ6?=
 =?utf-8?B?dmprOXhYV2pOOHdnTjhHZ1JPUkVIYWY1Mm5jdXR0enNJbVUyTGk3SkU1ZVNR?=
 =?utf-8?B?ejdIYlUxcUkyNitkdlE2Y3BNVVJDQytneWVxaCtpNVp6Y3h4Nkw5OVZHU2Q2?=
 =?utf-8?B?WkRzL0VQY21rbUlmL1NhUlFKbGh3U3FnbVMzNjJ4V01wTXlERkhsaXRVTzBJ?=
 =?utf-8?B?TUFDclptbm9TSDA1aU41bStUWFIxa28wY1BXUzdUNHpacE5pZXF1cTI1ZnVW?=
 =?utf-8?B?b0UwWFdpZnp1Q1NkRlRZSThJbnU1cnpaTXlXVVd3ZlJ1Snk3OHpBUUFkbTJv?=
 =?utf-8?B?VnFQaHJ1NU1kZjFmOWMzQk14VFRhQjJHWjFiZ3dQMUJ5d3ZraEZHWnR6ZVJM?=
 =?utf-8?B?cVhmUXlqNmVOOE1USXExK0NPOWpDU1J1Qjl4K0czakhFbXBWTTIwL2Y4OEt5?=
 =?utf-8?B?Tk5OM2VBcnJvYjJtc3d5MjBkR2l5TVdHb1A0cTFqNFFjTElWbnVXVHJrekpV?=
 =?utf-8?B?UFF3SUFXY2t5emtsN1M4UG50VlkyZGFncS9zSjJDekNpUlZjRVNUYk9BdVJh?=
 =?utf-8?B?eDg2OU5yUGxmMHJWei9TYy9kTTVqRkgzRWxyWmpMc1lZbkpYTzQyZjBiOTgr?=
 =?utf-8?B?YUp6ZTFBZkk3anZ5T21Sd2lxVURxR3AzNCt3MDFiWVI2ekJ3TE1WMUR0U1dG?=
 =?utf-8?B?amc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b73858da-889c-4d4a-7a19-08dd20fb85ce
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 20 Dec 2024 13:38:01.2566 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: p0lB++JbhOadS7QzDTMzfPiu3o8Aq5XYSHj7E9mHHn4SvkcuG29oOpzLZxoLfVwSZAkgSUxOXRY4KV9wOq4B+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4861
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

Quoting Ville Syrj=C3=A4l=C3=A4 (2024-12-20 06:11:57-03:00)
>On Thu, Dec 19, 2024 at 06:48:36PM -0300, Gustavo Sousa wrote:
>> The current intel_*_duplicate_state() functions assume the offset for
>> the base member of their state structures is zero when calling
>> kmemdup(). While that is true today, such assumption should not be made
>> and proper offset must be applied when calling kmemdup(), otherwise we
>> will be duplicating the wrong memory area if, for some reason, the
>> offset is changed in the future.
>
>All kms objects we use make that same assumption. I think the correct
>thing to do is to just throw in some BUILD_BUG_ON()/etc. to make the
>thing not build if that doesn't hold. I had a patch like that ages
>ago, but it's no doubt 110% stale by now.

Okay. In this case, if we were to follow this route, some questions:

1) Where would be the best place to put BUILD_BUG_ON() (or
   static_assert())?

   Would requiring the usage of some macro provided by
   intel_global_state.h be acceptable? Something like:

   struct my_state {
       struct intel_global_state base;
       ...
   };
   INTEL_GLOBAL_STATE_SUBCLASS(struct my_state, base);

   Well, we are still requiring a macro call here when compared to the
   explicit assert on the offset, but now the semantics is that the
   developer advertising a subclass of intel_global_state instead of
   hand rolling the necessary checks herself.

2) If we require the embedded struct to be always the first member,
   would there be any point in defining and using the to_*_state()
   macros? I don't see much benefit of that over simply casting the
   pointer if the offset is always zero. I might be missing something
   though.

>
>I suppose no real harm if avoiding that assumption in spots like
>this, but the &foo->base=3D=3DNULL <-> foo=3D=3DNULL assumptions we have
>all over the place are the far bigger issue.

Yeah, maybe requiring base to be the first member is a more manageable
approach indeed.

--
Gustavo Sousa

>
>>=20
>> As such, update each of those functions to use its respective
>> to_*_state() as the parameter to kmemdup().
>>=20
>> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>
>> ---
>>  drivers/gpu/drm/i915/display/intel_bw.c       | 4 ++--
>>  drivers/gpu/drm/i915/display/intel_cdclk.c    | 4 ++--
>>  drivers/gpu/drm/i915/display/intel_pmdemand.c | 4 ++--
>>  drivers/gpu/drm/i915/display/skl_watermark.c  | 4 ++--
>>  4 files changed, 8 insertions(+), 8 deletions(-)
>>=20
>> diff --git a/drivers/gpu/drm/i915/display/intel_bw.c b/drivers/gpu/drm/i=
915/display/intel_bw.c
>> index 08e8a67ca74c..30236010e0ed 100644
>> --- a/drivers/gpu/drm/i915/display/intel_bw.c
>> +++ b/drivers/gpu/drm/i915/display/intel_bw.c
>> @@ -1425,9 +1425,9 @@ int intel_bw_atomic_check(struct intel_atomic_stat=
e *state)
>>  static struct intel_global_state *
>>  intel_bw_duplicate_state(struct intel_global_obj *obj)
>>  {
>> -        struct intel_bw_state *state;
>> +        struct intel_bw_state *state =3D to_intel_bw_state(obj->state);
>> =20
>> -        state =3D kmemdup(obj->state, sizeof(*state), GFP_KERNEL);
>> +        state =3D kmemdup(state, sizeof(*state), GFP_KERNEL);
>>          if (!state)
>>                  return NULL;
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c b/drivers/gpu/dr=
m/i915/display/intel_cdclk.c
>> index 3506e576bf6b..fc084e2a4c6a 100644
>> --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
>> +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
>> @@ -3130,9 +3130,9 @@ static int fixed_modeset_calc_cdclk(struct intel_a=
tomic_state *state)
>> =20
>>  static struct intel_global_state *intel_cdclk_duplicate_state(struct in=
tel_global_obj *obj)
>>  {
>> -        struct intel_cdclk_state *cdclk_state;
>> +        struct intel_cdclk_state *cdclk_state =3D to_intel_cdclk_state(=
obj->state);
>> =20
>> -        cdclk_state =3D kmemdup(obj->state, sizeof(*cdclk_state), GFP_K=
ERNEL);
>> +        cdclk_state =3D kmemdup(cdclk_state, sizeof(*cdclk_state), GFP_=
KERNEL);
>>          if (!cdclk_state)
>>                  return NULL;
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/intel_pmdemand.c b/drivers/gpu=
/drm/i915/display/intel_pmdemand.c
>> index cdd314956a31..1f71efb7d04d 100644
>> --- a/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> +++ b/drivers/gpu/drm/i915/display/intel_pmdemand.c
>> @@ -18,9 +18,9 @@
>>  static struct intel_global_state *
>>  intel_pmdemand_duplicate_state(struct intel_global_obj *obj)
>>  {
>> -        struct intel_pmdemand_state *pmdemand_state;
>> +        struct intel_pmdemand_state *pmdemand_state =3D to_intel_pmdema=
nd_state(obj->state);
>> =20
>> -        pmdemand_state =3D kmemdup(obj->state, sizeof(*pmdemand_state),=
 GFP_KERNEL);
>> +        pmdemand_state =3D kmemdup(pmdemand_state, sizeof(*pmdemand_sta=
te), GFP_KERNEL);
>>          if (!pmdemand_state)
>>                  return NULL;
>> =20
>> diff --git a/drivers/gpu/drm/i915/display/skl_watermark.c b/drivers/gpu/=
drm/i915/display/skl_watermark.c
>> index 29e8ea91c858..b3d38e09df5a 100644
>> --- a/drivers/gpu/drm/i915/display/skl_watermark.c
>> +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
>> @@ -3291,9 +3291,9 @@ static void skl_setup_wm_latency(struct drm_i915_p=
rivate *i915)
>> =20
>>  static struct intel_global_state *intel_dbuf_duplicate_state(struct int=
el_global_obj *obj)
>>  {
>> -        struct intel_dbuf_state *dbuf_state;
>> +        struct intel_dbuf_state *dbuf_state =3D to_intel_dbuf_state(obj=
->state);
>> =20
>> -        dbuf_state =3D kmemdup(obj->state, sizeof(*dbuf_state), GFP_KER=
NEL);
>> +        dbuf_state =3D kmemdup(dbuf_state, sizeof(*dbuf_state), GFP_KER=
NEL);
>>          if (!dbuf_state)
>>                  return NULL;
>> =20
>> --=20
>> 2.47.1
>
>--=20
>Ville Syrj=C3=A4l=C3=A4
>Intel
