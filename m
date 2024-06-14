Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E03490869A
	for <lists+intel-gfx@lfdr.de>; Fri, 14 Jun 2024 10:41:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DE8DD10ECA3;
	Fri, 14 Jun 2024 08:41:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DP/LtL74";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD4910ECA3;
 Fri, 14 Jun 2024 08:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718354498; x=1749890498;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=G+HM9+WvIMty9eU1jreIyAwRfY4k2mJ9oV4wUrcIeVw=;
 b=DP/LtL74uNv/Qipa83T+6MI+C2Mtrw9KIbbZTH2xdbqrq9kmckh8cQ9j
 fb8uNrEGE4HsalRl8vFof+n6g3Bj6QPGioSI3dh5nkbaPpXfOq4CtCHNe
 8bHqeK+k2qEXAy/nuzvN8GuD1UrOdPdbJWEntSxor3wDBB9dNDZx0pC1U
 ykVcVdFwSNPwBkcWSImC3oJn5imD+v3yagvXuo2x8R82oSrkjwe7tjk+d
 p5jRqgST7Qt+o9WICJlSF25CbgTdmEwHI+eSTtzwmCIr5ztOD1jkEd0GU
 UZIdBr//Yh18LTYAL8QqJlG8YEmNpi/BxGfNDGFd44e6Gab3fo+vEEg0y g==;
X-CSE-ConnectionGUID: mXADIs1OQl+VZ1GmKH5EJA==
X-CSE-MsgGUID: oL+ESuSrT6+czSeElkrtjA==
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="15354288"
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="15354288"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jun 2024 01:41:37 -0700
X-CSE-ConnectionGUID: jho9geeURoyK5yJhP1tKVA==
X-CSE-MsgGUID: v25HrJasQRuBXoVowuKuqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,237,1712646000"; d="scan'208";a="40400813"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Jun 2024 01:41:37 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 14 Jun 2024 01:41:36 -0700
Received: from fmsedg602.ED.cps.intel.com (10.1.192.136) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 14 Jun 2024 01:41:36 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.169)
 by edgegateway.intel.com (192.55.55.71) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 14 Jun 2024 01:41:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=K/jxHKRg9t/TzRztUrHHBQQuf/cg9G2C2BMXo8lRdK3OLIJOmsDp18QB6dLxjMsDCyRIAVqUqP65NEaiNPdmAmae9BuECBFFA3zmo26W1fb27VemTcHKHy+k/mjmWoK6W668l+Bt5vM1SfkDVz2f6j7aDYAHKN8HuAJcZZZsUCZPhfxjA6PHzOsK12uhoIUEgeEfMmpsN0iZDtY/LTEtzy+oFZJvs+RktnOOmBNA12KHVntUsUEOBBXuPDxtb9r1JI4KYqC03QbpB+F8QffECRFisAfB5ta5Iy8JaDmQ34XEGp0d3r9/BjZ3E0Cvi51hQOg9CQlc7fRKQhQqZkAk2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=G+HM9+WvIMty9eU1jreIyAwRfY4k2mJ9oV4wUrcIeVw=;
 b=Hps901GQHjbapJfGJGBj18c1FKyrU22fNGPSFcHxGz+nByWg/GxZ1FRcqv3PdQHIVbCyymF+ci6lGLhhgY+c9ZODJ59TzoqRgQ+zkSv0cW3XxZUWcXWrAQXDfOCHVr/9UTdes/kf/Nu4F9kgh+9zTaSeDCLfz1rnimRDi4FGus8TV08y8xoF/xGDCKDB2XaGPCogyyi33bSpKFhRRb/l8NisI0RUf1oFqzn/BNAQYeny0oxXjjMMGXk8OC4OB5yPGHAfxisolwTEL4ik1omvP2zxXl1yb3wld97e8t3bAIt3fTsh5tiB9hbSbar7AUP9BsaC5euV2fV1q78OXVuceA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 MW4PR11MB5776.namprd11.prod.outlook.com (2603:10b6:303:183::9) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.7633.37; Fri, 14 Jun 2024 08:41:29 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.7633.036; Fri, 14 Jun 2024
 08:41:29 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
CC: "Lankhorst, Maarten" <maarten.lankhorst@intel.com>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>, "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v1] drm/xe: avoid the async_flip update in the initial
 plane config
Thread-Topic: [PATCH v1] drm/xe: avoid the async_flip update in the initial
 plane config
Thread-Index: AQHakmN2/fTAV9lJuk+MRG08+NfgYbHHL0wAgAAUTICAAATsAA==
Date: Fri, 14 Jun 2024 08:41:29 +0000
Message-ID: <7900bcab17ca0d66f6e2cb99cb0676ccdf5ed719.camel@intel.com>
References: <20240419140925.157924-1-vinod.govindapillai@intel.com>
 <7a429d9a5f26c4a0f9b2bf1208ae1a4829d9e4c5.camel@intel.com>
 <ac0608c9ca5ed21a4f4f119f747f61f9130ad1ac.camel@intel.com>
In-Reply-To: <ac0608c9ca5ed21a4f4f119f747f61f9130ad1ac.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|MW4PR11MB5776:EE_
x-ms-office365-filtering-correlation-id: c22d937c-43d2-4105-a61f-08dc8c4dc91d
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230035|376009|1800799019|366011|38070700013;
x-microsoft-antispam-message-info: =?utf-8?B?MVNHbFR6QXdHMlAxVk5ib1FXRUFtYlRZYkJMTkxKMDRINzlYQkFiZ3U4ZVd0?=
 =?utf-8?B?M3FBdEp2cDRIbk5CWlVMTDdqVVFCWXZwZm5ZK0dxejdxV2JrQ2pnNi9iVWlT?=
 =?utf-8?B?Q0JqNEFWaXMrYTRSNTkzVXB5OVJNM1BlT3BEUUhlbXBxbHNvSFNRVVFvZHl1?=
 =?utf-8?B?bWpOSnhoMlpIMnhUQ0NVMnBVbVBtS0Fra1czR21tN2RRQWpmQTJ3eE1tSGVT?=
 =?utf-8?B?aVBZWFJUaHlydjVncmJUcWNQdlJ2b2loY3QzQXMxVFdDZFJXdmFwUTVGTUdY?=
 =?utf-8?B?VGM1aGlhcnR0eWc5dmk0WDFCcW1Kc0d4N0lUVVZjSGJTeGtUNXZCUDNGMW0z?=
 =?utf-8?B?RXNHbWtqdmtTemN0L215OUhxci96MktrK3czL1N4YUw3Y0J3UXZMeEdleWVa?=
 =?utf-8?B?RmJEaDZaS3B2amZPWlArQVdCMXFSdnNIbTVUWFFhQ0NFWUtHeHpXL29GT25X?=
 =?utf-8?B?VGhDUi8xQXNacnpmT2pKWXR3eVc2RnYxSk9DOVRnVzVXbERobkVuK2wrOUM1?=
 =?utf-8?B?eWlFSldjNnluc3c4SW5UMWt4WWY2L3g5U3JvdGlvZVpZYVlpK1ZQRElYUmVz?=
 =?utf-8?B?STdQZzdZbCtBSDB3SmZUSUkrd1F2d2VBTlpjVHNuVElTVXJQZEpLY0hHY1A5?=
 =?utf-8?B?UytCSHNPTFJYZjdWQW0ydFM3QldHOEwwMGRtb081Q1l6MzM3M2M1M0E4b1JK?=
 =?utf-8?B?a1dZWXdFWmRvQWVHSEt3WTVDS1FEd2JTbGRRUzhhcm1UR3NPZTV2eXBuMGhw?=
 =?utf-8?B?T0MyRVJGV2Fwb09wNVduYTcxN2diaEhudTlkRXdZeXZCTkNCWEF0dGV6TlRk?=
 =?utf-8?B?SDdLZUxwdWRSN3JLL2ZQMjlYOXF5YnlnVi9weGpWbC8rUEZzMHA0bzdXRGd1?=
 =?utf-8?B?NEdTb0lnOEZ5MlRZSUFJOVhyRlc1Ym0yMTRMNExkU2pIMloxUFVxb3lsVlVI?=
 =?utf-8?B?TDhHT1NVQ2NLUlNnUHV4ZmFrUVk3R1g5T1RNb09XU3ZyVFpIVi8rUzV4c3ZN?=
 =?utf-8?B?VzlkOWlNSTVQWTUvTDduQk9TbnYycDE5V1VLdFBYZXM1OENwYVNVOUp3RDhI?=
 =?utf-8?B?aERlMVVqQThiSDNFZUpubm4wdm45UUZoWkxnSDYyTnhmbWVTTFY5VnVwWU9r?=
 =?utf-8?B?eXYvcE1IUThmS3pNYTNmb0NRaUl4SGM5bXFzUVRuc3diUzVqQkgrUXZvRXNl?=
 =?utf-8?B?SGJGb29nMXB3Tkhoa0FPK3F2QmtOczBDd08zdmVXbWtnQUNiM213bHdNckVT?=
 =?utf-8?B?RkRIOWdCNWpUTktjSlBFQ2tXZUUvRWJvNXc0dmd2YWRnTlF3VVNmN1I4cEo4?=
 =?utf-8?B?Z3NaTEZ1T2haajZrWDVFV1J5TUx2ckZxN2ViQ2QzdHJuT3pxV3gvV2hRRDNN?=
 =?utf-8?B?NDY1eGhrM1A4aW1mOXVZQncrZ2dpcTJzazVTQU1QUjZRODlQZTRocW5EMnls?=
 =?utf-8?B?Y1ZraFkxUFRLVGxWUlc3aThidm9hZzNVTndpRWZpK25GcFpTUkZkeHhYWGRO?=
 =?utf-8?B?aVhLSmlVZHZJK21wNDN6N1lCRXRIbDBUSExpYWYremlFSGV2VmJKeTdwZnpk?=
 =?utf-8?B?WXlNR0VBbjUvMHNsMDQzekZkQkp1STNZSjRXK2pSTSswQWZwOHFkQk9zeVpj?=
 =?utf-8?B?SHI4SldtbTdXallGQ3cvN0NpUm9QSnVCRloxQUJGN1Z1OHNvMm9zRGczLzZ5?=
 =?utf-8?B?WGIxSjNPVGdHUzNmc3dCTFAxZFlZOXhuSFhLVTJXUTNRMkxOZmJMcE5SYlBN?=
 =?utf-8?B?RmJMYjlqU2psa25CQVNkUGZORWU3OVR3eWZuOStNNnU4Snd2bzhPc3RjYThv?=
 =?utf-8?Q?S8BK8LD2QJ/EyjDlWK7lcw/iKqJ/xtGPcBVaY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230035)(376009)(1800799019)(366011)(38070700013); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c1R1QlpqMFQzd0ZGY3NMM0tHc3VPMlduNzhpTXZocFlhVk1acDVTUzJmOWNN?=
 =?utf-8?B?Qm9WTWc1bEoxYjNDM0F3MlZHUW5IaUZWblRMekE4OFV6T0NSaUovQ1pJTk5M?=
 =?utf-8?B?Mm5VRXRmTEVBVGYxUnI2dEVlZlI2ZTB2dE4rZWE2c3Y5VHp1Z21uZE9DREs3?=
 =?utf-8?B?S3pxZEYyYmR4dFJ0V05TcS9ieFVtT2FCQUsrNkpZcWtyamw3NEVYSVUrZDR4?=
 =?utf-8?B?ZkM1L3BnRmdUVXhzYUdBQ0NwUEFhWDRZWEkyNUlXV0F5TWJxTHRQdzFEUG9q?=
 =?utf-8?B?WHdRMDlLYnVQZC9GaHdISVdaVGZhNFFCdFJSa0ZUMWx5RG5TVDZOT1BNUllV?=
 =?utf-8?B?K0hoQWJXWVZNT2kxOXlHcTlPd2pHUlBtUWhjeGp6Mm5qeE93WmwrbVlTMTJH?=
 =?utf-8?B?TVhOMzMyN3E3aDVPMHZBb3ZIZ1NhL0Mwd3Fxc0dmaVMzWkM1Z015VkRlTTdH?=
 =?utf-8?B?VTkvSEsxaHp0bDFNTy9ld1ZHajRDR2dvdUZqaVh3elMzWUFuY1FmMGZ6YlBY?=
 =?utf-8?B?dWhLMVVrOHNPY1gySVljREVJdXZybDNDUDY3N21GTEtTYzZyeWdiWEpYYlpw?=
 =?utf-8?B?Q3h4QUJ4OUVTU0gwQS9ycE82MjFJcndsekNLMkVWMEFBblpYRHF0b25ldER5?=
 =?utf-8?B?UVMzWU11Q3BKZFRBTzNJeWNQUmZXa2pWK0MxcHEyTzh2M3VOcC9XZmEzcDRK?=
 =?utf-8?B?RjliaVZteEtSNFVHU0p1VzNJb21kSUFVOWRkQlV3R0J4SlBlTmhWL0RlUkUv?=
 =?utf-8?B?aVY4d0gyMFJQRHJ0T3R4T2gyU0xhTHhzbXR0YW9kWE9VbjhEYTl4TFJnYkpL?=
 =?utf-8?B?TGpSYytiMlR3Mjl5U1BvRGRnTEwyK1V2VDJhQWlNQ3E2ZEJFdjBZY0hlRTRF?=
 =?utf-8?B?VkJoNUJzNDZOYllCam1ua29IMzhXTXBpdzNuTCtLR2xTRUVKc2V4TVgxSTFU?=
 =?utf-8?B?UDVCdWwyMzIyNlVDY1NjZWtyZkdFaDZFRnFJa0JDbkFqRU5tOE9lT3R4cGJH?=
 =?utf-8?B?S29kbDJtN0dFbWZCMFd2YkxhYVdTUzcrV3p6QlpFd095cjFVRHl6VGNwZW9O?=
 =?utf-8?B?WXhNMHU4V3lndDMzSjFtbjBPOG9MTHorTGtNamlSZk1OdjBrQjRPWWZqMzF0?=
 =?utf-8?B?NDNsRStsZjV2UmJycUtNWCs0cXRQMUQ4K2FkaWthOTdUWEY5bWVzV3VOZGJF?=
 =?utf-8?B?d1VmSmtnZWI0L3RKNEE3cy8wNEpQNTJRb1ZwZFBnVG56VUd4SGJXZnU4OGR0?=
 =?utf-8?B?ZXZ2STB2RUpSRDNQN25IeDlsUDV5ZWFLdXVCRndrYnZFTldIRmZKNnQrTXp4?=
 =?utf-8?B?cWdGZW0wSEZ6cms3NDBNSFIyRlBRaEZlcHNHaEFhaGhtM1gxWW45K0htdHpa?=
 =?utf-8?B?MmRqSUVLTGt3OVZFQWJCZythdlBTdVllZVErSXVDT0RWbUVaakdpcTNPM25x?=
 =?utf-8?B?NHhRb2w5TDRwckdqTEV3M2h1WkZyc1RJYldpMW02emVDN0pUajQ2cVM3akZh?=
 =?utf-8?B?T2N1KzhlblpUaE55cXd5RlJlTU9wSFNhM09acGs5eDBGWlZBZTR6ME9nSk5G?=
 =?utf-8?B?eEo2UlZrdGkvcG9ZYmlJR3VyVXlrZWM1cXFqVXhrUUR5YUNyTDZ0VmhSRS9U?=
 =?utf-8?B?WkJFUTV6QzZLcGFtckh4VWZSUm5UdXE1ZUlIL3BnTWVvMmV6RUJVMEZjS0Jq?=
 =?utf-8?B?clh1ZUkyWTFtTHVDeHdnTU9iWS9IM1FLYU5iQ0ZtKzFnR2lIcXE4Mk5mVWZj?=
 =?utf-8?B?aGxpdkdlTmVXRkJXRGkvdll1dW5COXJvMjF1YjhxbjZUenBIam9UdXlPS3R0?=
 =?utf-8?B?d2pxeVo1MkZvQ0xaY1lvUm9ud3ZiQWp3Uzc1TFRvcFBiQkRVdGIvRjAzNzZu?=
 =?utf-8?B?SURZRGhsdUFXeERDUTBKREI1YVdZaERJaVd0QzVHZ1Y2dmdOTVBiMkgxblFV?=
 =?utf-8?B?SitRU0xLVEZMVDRMK2RLN3VSQkwvT2xtNHBIWmNpcHBhWkswVEQxU3R6VUQw?=
 =?utf-8?B?Uks0ZFhYS3ZRcVZnY3VTOHdabXp6ZmxhU0llQXI2UiszeVdGQ0tKbzVFQ2hF?=
 =?utf-8?B?ZU0vNDcyYnk0OWxyZk1QUk9Na2NnQUJHNVp3a1hmbm1vOGZvOTRFR1oxNU83?=
 =?utf-8?B?R21GZTZFa3B0b0N0TG5rZ3pFLzR3SjVCY09pZUhUY0I2M3MrdVBzVHg2bWpv?=
 =?utf-8?B?QVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A0EE3AF9E4BCAD4D93ADCE9A10334EFE@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c22d937c-43d2-4105-a61f-08dc8c4dc91d
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jun 2024 08:41:29.3996 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ngZ2KA42kT1Hr0kjJB7WL1cLCvi8MQbgf5sajQregH7xLdjjWZFtZ36dXRLcRB2gfxdJldhZmdL0xJx0lysWlF40BMjktEBF8S4kFkU4LHw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB5776
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

T24gRnJpLCAyMDI0LTA2LTE0IGF0IDA4OjIzICswMDAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToNCj4gT24gRnJpLCAyMDI0LTA2LTE0IGF0IDA3OjExICswMDAwLCBIb2dhbmRlciwgSm91
bmkgd3JvdGU6DQo+ID4gT24gRnJpLCAyMDI0LTA0LTE5IGF0IDE3OjA5ICswMzAwLCBWaW5vZCBH
b3ZpbmRhcGlsbGFpIHdyb3RlOg0KPiA+ID4gQXN5bmMgZmxpcCBjYWxsIGlzIG5vdCBuZWVkZWQu
IFRoZSB1cGRhdGVkIGZiIG1hcHBpbmcgaXMgdXBkYXRlZA0KPiA+ID4gYXMgcGFydCBvZiB0aGUg
Zml4dXBfaW5pdGlhbF9wbGFuZV9jb25maWcoKSBjYWxsLiBPdGhlcndpc2Ugd2UNCj4gPiA+IGVu
ZCB1cCB1cGRhdGluZyB0aGUgUExBTl9TVVJGIHJlZ2lzdGVyIHR3aWNlIHdpdGggdGhlIHNhbWUg
aW5mby4NCj4gPiANCj4gPiBhc3luY19mbGlwIGlzIHdyaXRpbmcgUExBTkVfQ1RMIGFzIHdlbGwu
IElzIGl0IG9rIHRvIGxlYXZlIHRoYXQNCj4gPiBvdXQ/DQo+IA0KPiBUaGFua3MgZm9yIHRoZSBy
ZXZpZXcgSm91bmkhDQo+IA0KPiBZZXMuLiB0aGF0IGlzIG5vdCBuZWVkZWQgZm9yIHRoZSBpbml0
aWFsIHBsYW5lIGNvbmZpZy4gVGhlIGk5MTUNCj4gY291bnRlcnBhcnQgZG9uJ3QgaGF2ZSB0aGlz
IGVpdGhlciENCj4gSSBoYWQgY29uZmlybWVkIHRoaXMgd2l0aCBNYWFydGVuIGFuZCBWaWxsZS4g
QWNjb3JkaW5nIHRvIE1hYXJ0ZW4sDQo+IG1vc3QgbGlrZWx5IHRoaXMgcGFydCB3YXMgY29waWVk
DQo+IGZyb20gaTkxNSB3aGljaCBnb3QgZHJvcHBlZCB3aGVuIHJlZmFjdG9yaW5nLg0KDQpSZXZp
ZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4g
DQo+IEJSDQo+IFZpbm9kDQo+IA0KPiA+IA0KPiA+IEJSLA0KPiA+IA0KPiA+IEpvdW5pIEjDtmdh
bmRlcg0KPiA+IA0KPiA+ID4gDQo+ID4gPiB2MjogYXZvaWQgYXN5bmNfZmxpcCBpbnN0ZWFkIG9m
IHJlbW92aW5nIGZpeHVwIGNhbGwgKFZpbGxlKQ0KPiA+ID4gDQo+ID4gPiBTaWduZWQtb2ZmLWJ5
OiBWaW5vZCBHb3ZpbmRhcGlsbGFpDQo+ID4gPiA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5j
b20+DQo+ID4gPiAtLS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3BsYXkveGVfcGxh
bmVfaW5pdGlhbC5jIHwgMTAgLS0tLS0tLS0tLQ0KPiA+ID4gwqAxIGZpbGUgY2hhbmdlZCwgMTAg
ZGVsZXRpb25zKC0pDQo+ID4gPiANCj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0v
eGUvZGlzcGxheS94ZV9wbGFuZV9pbml0aWFsLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL3hl
L2Rpc3BsYXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+ID4gPiBpbmRleCA5NjkzYzU2ZDM4NmIuLmI1
ZjgzODFiNTkzZCAxMDA2NDQNCj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS94ZS9kaXNwbGF5
L3hlX3BsYW5lX2luaXRpYWwuYw0KPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL3hlL2Rpc3Bs
YXkveGVfcGxhbmVfaW5pdGlhbC5jDQo+ID4gPiBAQCAtMTg5LDggKzE4OSw2IEBAIGludGVsX2Zp
bmRfaW5pdGlhbF9wbGFuZV9vYmooc3RydWN0DQo+ID4gPiBpbnRlbF9jcnRjDQo+ID4gPiAqY3J0
YywNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgdG9faW50ZWxfcGxhbmUo
Y3J0Yy0+YmFzZS5wcmltYXJ5KTsNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxf
cGxhbmVfc3RhdGUgKnBsYW5lX3N0YXRlID0NCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgdG9faW50ZWxfcGxhbmVfc3RhdGUocGxhbmUtPmJhc2Uuc3RhdGUpOw0KPiA+ID4g
LcKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUgPQ0KPiA+
ID4gLcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHRvX2ludGVsX2NydGNfc3RhdGUoY3J0
Yy0+YmFzZS5zdGF0ZSk7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGRybV9mcmFtZWJ1
ZmZlciAqZmI7DQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGk5MTVfdm1hICp2bWE7DQo+
ID4gPiDCoA0KPiA+ID4gQEAgLTIzNiwxNCArMjM0LDYgQEAgaW50ZWxfZmluZF9pbml0aWFsX3Bs
YW5lX29iaihzdHJ1Y3QNCj4gPiA+IGludGVsX2NydGMNCj4gPiA+ICpjcnRjLA0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoGF0b21pY19vcihwbGFuZS0+ZnJvbnRidWZmZXJfYml0LA0KPiA+ID4gJnRv
X2ludGVsX2Zyb250YnVmZmVyKGZiKS0NCj4gPiA+ID4gYml0cyk7DQo+ID4gPiDCoA0KPiA+ID4g
wqDCoMKgwqDCoMKgwqDCoHBsYW5lX2NvbmZpZy0+dm1hID0gdm1hOw0KPiA+ID4gLQ0KPiA+ID4g
LcKgwqDCoMKgwqDCoMKgLyoNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoCAqIEZsaXAgdG8gdGhlIG5l
d2x5IGNyZWF0ZWQgbWFwcGluZyBBU0FQLCBzbyB3ZSBjYW4gcmUtDQo+ID4gPiB1c2UNCj4gPiA+
IHRoZQ0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgICogZmlyc3QgcGFydCBvZiBHR1RUIGZvciBXT1BD
TSwgcHJldmVudCBmbGlja2VyaW5nLCBhbmQNCj4gPiA+IHByZXZlbnQNCj4gPiA+IC3CoMKgwqDC
oMKgwqDCoCAqIHRoZSBsb29rdXAgb2Ygc3lzbWVtIHNjcmF0Y2ggcGFnZXMuDQo+ID4gPiAtwqDC
oMKgwqDCoMKgwqAgKi8NCj4gPiA+IC3CoMKgwqDCoMKgwqDCoHBsYW5lLT5jaGVja19wbGFuZShj
cnRjX3N0YXRlLCBwbGFuZV9zdGF0ZSk7DQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBwbGFuZS0+YXN5
bmNfZmxpcChwbGFuZSwgY3J0Y19zdGF0ZSwgcGxhbmVfc3RhdGUsIHRydWUpOw0KPiA+ID4gwqDC
oMKgwqDCoMKgwqDCoHJldHVybjsNCj4gPiA+IMKgDQo+ID4gPiDCoG5vZmI6DQo+ID4gDQo+IA0K
DQo=
