Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IDO0AtiMc2l0xAAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:59:36 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66C02775EE
	for <lists+intel-gfx@lfdr.de>; Fri, 23 Jan 2026 15:59:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CC8310EB0F;
	Fri, 23 Jan 2026 14:59:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Fd/gYwhP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1550010EB0D;
 Fri, 23 Jan 2026 14:59:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769180372; x=1800716372;
 h=content-transfer-encoding:date:message-id:subject:from:
 to:cc:references:in-reply-to:mime-version;
 bh=57PP4n5nMF5m76bLtjZI728Jb/tfnpx4+L5+RMSZyXE=;
 b=Fd/gYwhPVtL83Li3r8Z8HE7qU/H7ekwwQhy1JfvBNcvDede6tod95V9y
 Oknsicwh02Nmxxnv9xAeLmrHCGDt1BBbzY+97nyC02n/cQAuIigngGjqr
 GBPRUNGCwTYq5tLcJylv/mz/oxPO7ZuQKdZaxobZsaMYZ6KAxQkMIc5Nd
 LSEE0nZNm36pw75m5y7STtmKjwasxS/bCqpDJyLulUfTnNQOVGkzVG9L0
 uXbkrMUCQjw6f8lQmePhp+v7A6X2l9eTXD6XJ7OtYI0kMhODWsBZIyUFY
 iXSpQDGyqflW0hcC6b7GrAaNLX8ffAy/6dZo5XNh47XOC49uyP90TqfmU A==;
X-CSE-ConnectionGUID: lM4htnaMSUO4D+yyRDZaPg==
X-CSE-MsgGUID: +A7lHu0GRBKzCWC9KZ2KBg==
X-IronPort-AV: E=McAfee;i="6800,10657,11680"; a="69630493"
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="69630493"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:59:32 -0800
X-CSE-ConnectionGUID: 0jtouBgBRG6x0ZowmtFToA==
X-CSE-MsgGUID: KpmtHnHSRymLaoHqPmVUqQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,248,1763452800"; d="scan'208";a="211509251"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa005.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Jan 2026 06:59:31 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 06:59:31 -0800
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35 via Frontend Transport; Fri, 23 Jan 2026 06:59:31 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.19) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.35; Fri, 23 Jan 2026 06:59:30 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SjXwxUoopu97dxY2X9CXUaGhiST2D+oN4qwm0py6k7RTSlKnudQuOEcR96bQ25Xsx3Bsix/ydDHD8JEH1rvGe8vttf0ST8Nwjd00HgwthwuEMbGHUrb76sU1EV8Ho74sUmrF/gbNvS514G+pRJ9TXg1BKnjGY1dmDjIxqvxZssYo6hRsCcFZc9u8fzAlDrLc0vZXYd0PMK3uYa91dp9Ic6hoAITRydQ7dc4e9wQWFkU1y9jMiaA4D8l0zkwYu5eBscZx4sLbZGHpAZtQdhAAx52qZLPBuLi2FFOY/KyG9h0lhNj8v5MAe/UrpNLGdliGES8Hin8bzFhxViPtZQPl6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HAHk6A9EsDbE1AQHF75FzO68RsV23wkT/zcMfhqoPY0=;
 b=s7fLpInc5tfiDhu61xMT68qO188M51llwrXpjvbMijioKMaoErqYqzPFvmR1NFdipsg8fv02VNGrNfEjfyN48wV94sDVF01wclythbDPiukTTtcNwXSIm4ha7GgzHpbgA0RVFIiXpU7U0qlZ9Q+XgcI+awh4inHc/GiDmn82wA5/URyLVMmKpxLTmb8homMPahLMkZqTIhpDYCWowRLCEKmphZdC1chR8pkCT1Fu7OHUJLteHM3ZH8OHdfuj+EJIoIhn4SZcTrkb9wMO7W/h2NN2nJDYxbBojFgLQ+OgfFpuy7hjAYJ+adFeZ8zpUu03fhJ+sGNFgMKGMW6kcrk0OA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from MW4PR11MB6909.namprd11.prod.outlook.com (2603:10b6:303:224::12)
 by SA3PR11MB8073.namprd11.prod.outlook.com (2603:10b6:806:301::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9542.11; Fri, 23 Jan
 2026 14:59:26 +0000
Received: from MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0]) by MW4PR11MB6909.namprd11.prod.outlook.com
 ([fe80::28da:9438:a3ef:19c0%7]) with mapi id 15.20.9542.010; Fri, 23 Jan 2026
 14:59:26 +0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
Date: Fri, 23 Jan 2026 15:59:20 +0100
Message-ID: <DFW23HOCSFX9.291I9H6EGBG9O@intel.com>
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
 <13932403.uLZWGnKmhe@jkrzyszt-mobl2.ger.corp.intel.com>
 <DFW19KMSYZCL.16OO7RCUP9LLQ@intel.com>
 <1948164.CQOukoFCf9@jkrzyszt-mobl2.ger.corp.intel.com>
In-Reply-To: <1948164.CQOukoFCf9@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: WA2P291CA0017.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::17) To MW4PR11MB6909.namprd11.prod.outlook.com
 (2603:10b6:303:224::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: MW4PR11MB6909:EE_|SA3PR11MB8073:EE_
X-MS-Office365-Filtering-Correlation-Id: ab29c66e-edc7-45b2-c739-08de5a900056
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?L1Z5bzFHZjduaEdPd3dMTk5BWEhUTUx4cFFKOWFIQWxyVWlBbGdEQWZ1aDFk?=
 =?utf-8?B?R3k0eExEL05sbHdpUkdLbHNSWmFGTGxhbXJFVXNSRGZVM1RIT29HVTJrZ3BJ?=
 =?utf-8?B?QithTnc1OTA5VVJ4RFppdGVYQ1N4d0o3emZJZG5SNXZmLzEwMmI5YjUydElJ?=
 =?utf-8?B?YWVZcS91VGV4Zzg0ZXBOWFBiTlNreWZyUWRqT09WemFVMnZLL3V2U2JNUHU5?=
 =?utf-8?B?TFc3a3B5TnhjdGFoQVp0RmU3VDlCQ0dIcjZ5WGJTNHprdnFTOFg3bHNjNEJU?=
 =?utf-8?B?czU5WUF5anZQS2YzZVlBaDhTa3JWVkNtRWhTMnlHTjZJQjRRT1N4ZUovV1ls?=
 =?utf-8?B?clhkR2FBTDQ4cFZUMzJpZUErWkxVODFIY0I2NllabVVVdGlrRlhHSmpmcW0v?=
 =?utf-8?B?NVFtMzNwNCtFR3QxOWRyQlcvYUVBQ1VZWjE5b3BwRDVMaFJPcVBsM0szdjdp?=
 =?utf-8?B?bFd1ZGE1TDN6WklIRmdiSWJSb0xLbzNRaTFNUUZ0dGt3Zy9NYk96a01ub1do?=
 =?utf-8?B?WHBHNmNKbTJsdWdaeFJaZEE4OUFuTzBnanFzdHlXSjVFN3ZaNUMyRi9IcFdB?=
 =?utf-8?B?WmJkWnhNK0RuL0l1aklyajdjUEp1WmR5RUVLL1RXNWdWLzBhRHVjb0dVbzNx?=
 =?utf-8?B?L0ZYM0RFL1pVSFUxcndzbmprelFqM0NwaUhyVnovK29SMEZsc05XU2QvQ3pD?=
 =?utf-8?B?MUtzMmk3TVpiZzRyQ1dnQkpOeVlhT2piWU9mQnVKT0cyWWxFZHBxNjNhK05J?=
 =?utf-8?B?TGpiRlNMdGVlaVA4bjlqcUxOdmR1ZDl0ZEgzdy83dkE2TnI3Y1FaRCtXUUVm?=
 =?utf-8?B?WEgxQndnQk1IUEViZ2JuZ0FmWWt3LzV5cnFMR3owTUtSV2JuWHp0NUlGZGpW?=
 =?utf-8?B?MjhXM0lUUzh3TEM2eTBOSFJJcDZzTWF6VDk1LzF2MmdmUi9uTVJQMXpVelZY?=
 =?utf-8?B?am1NQ0hKUkt6dGJoek8xSXlGTmR5RmNVYWNFUURNdUVBTEU2RnIvaGlkdkpk?=
 =?utf-8?B?SHdYSmw2OU5zVWxkRWd1MkF0N3AzZmI5WDIzUG1kNFNvQ01FWUFDMnRpa2xX?=
 =?utf-8?B?VlNZcjEzNUc3MTBsbWlyblNjZWNWKzFDMTRMUkhicEk2MXllSzlCL2JvbWtK?=
 =?utf-8?B?MWNjRjlYZGkvUGtoakxPbHBvKzdRV2xSK0pZRVpZM1BvRnR2ZzJaUnJ0am1X?=
 =?utf-8?B?UmQydm44UFRJNXhNVmRlOEtHajVKQzhGUzE3UG5KQUwwNVllbjFYWTZlMVlL?=
 =?utf-8?B?QUVsMTFDQVlMMXdPSlFWUW5jQzRLSHFDVkd4allDbDRQd0JrMVFFTzIwK0kv?=
 =?utf-8?B?OXkrTm1ZN2VXRW1xQitrN01nWkFjZGxFazhycWVTc0hsM1NEdDd6YkJTb0tX?=
 =?utf-8?B?SnFUZDFzaG4rcWh6Rm12MTllS2FocDlVamxBSFJlL0FhQXMvQXE1T2NveDZS?=
 =?utf-8?B?TSt1WjBnMlpUaFNhQy9telBNbzJibVJOS3BMaTl0QzR2K3o4ZlcvamF6bjNy?=
 =?utf-8?B?dWhYS1M0bG84aHZJS3hXSVpBUmpTVkE5eDIwVnBwR0NyRTZjMnA0K2VUa2lz?=
 =?utf-8?B?T2JKNzIvWFdUNVo4OEpVWW5hbDVvQ09YanRhS3N6SW10WElZWVhHUTJPTjdD?=
 =?utf-8?B?RnpTMTVFQUpYRjhucmRsaVhRZmcrL3BVVGMvSG45bTh2K3p0blFMMmZXaXoz?=
 =?utf-8?B?QUlNcWd0NzRLeGhzOHJrZjJ4TTlOS0lRQi9yZytYbTVtR3A0WGdiUU1EZUw5?=
 =?utf-8?B?NHdBeFJ1QWVlVWRvRnpYdGw0SmhYUGlGNW5mWjRnTkVrZ1J0Yk5vbjF5V00y?=
 =?utf-8?B?OVpNWGR6ZEdrWDNMSEJOUEpiMFl6RFA4VnQyaDF0bXJrTkt2R1NTRnJFb1l3?=
 =?utf-8?B?VHRyVW1WRGtxaW16SUlualB6eGpDeDNBaEpOV3lXUERGOE13MjFBNjJ2eTdS?=
 =?utf-8?B?aXRmdmp0bys5eHZraXlzQXRBYXRaWjZaMEhVKzA1dy9sVlJtZHZVZFNLZnhC?=
 =?utf-8?B?Tnk4aCtqVk5UczhiaFhFRzVsL0l3clp4NW44VG9kV1kweGE1R0x5bnR2MnZF?=
 =?utf-8?Q?EMiqpl?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB6909.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WDdiaEZ3QmtheEtIMjNMK0V3U21wNHJtWWRXVjlvdkZaTFE1di9paExkeWRJ?=
 =?utf-8?B?MCthT0MxaDVid2MxM0RwZ2dtLy9ramU4cXJHVnNQU1F6SE0xZHVzLzlXMUVJ?=
 =?utf-8?B?bHNFUHMwMHlpc2RTVWh6VDVlZXpBdElSb0lZQy9uejRJeG4xL24rcEtvWks2?=
 =?utf-8?B?K2lWNytzUy9UL1BkZnVrYVBjREtqenlFUDNXU3drV2kyczhjVkpRZXJaaEVm?=
 =?utf-8?B?U2Qvb1A4dUIzQndSZ0V5bEdENEZUMkdNQ1ZzVSt2SGx0c0ZwblAxaE9BTWdS?=
 =?utf-8?B?aUE2THlyUjB1czA1emdYL0huQ2RFYk0zQ1ZVZW05L28ydFlaaWMxVkRwb29p?=
 =?utf-8?B?UVdiYW9nTWd3ZmNTekMxWWVMQWUvaHJIS1FaWlZFZzY3Y25DL1pRc2tJT0l6?=
 =?utf-8?B?bVp4a2NGSEpXMGNCdTVkdGhBek5aRFU4cmR3Mll4bEkxYkE4b3MwUTlsUGdn?=
 =?utf-8?B?eEhzeTcrc2xBSzkzUWE3dC85SUZrOEd4Qlh5UytlSUZTeU5EcThRVzE3dDhj?=
 =?utf-8?B?SDVEYXgzTDF6R2N2clhzaEczdVNDS1VhdGxYa3AwU3dJcmpDQUtablRtYXFO?=
 =?utf-8?B?YUlHejFUaUpCRTBJeWVIWFFmVkR5bk45ek4zRUFZR2x5MDA5RnZBSy9lUXk1?=
 =?utf-8?B?dUpEUUFqZzZKeU5GZWVHMTRkcnlDd00yNWthSUdwbkgxeTd5WHRHK0hjVXR4?=
 =?utf-8?B?YVh4WkpNblFpbGt3anRZMURMMnRvUHIzSTVYaFQ1eXhCSEdTcjgxdmxVaXNU?=
 =?utf-8?B?RFRWQnZqbzlhbm5UcFlnNS9EUHB0K2JtSzZ0eXNIR3lqM0FOUGJrdlF5QnRD?=
 =?utf-8?B?Z0pBd1RjazQzQ1pFcER1aVQzNlRXUVA1SmNHN2w5dW1hRmUyRXhEZ2ozL2Z2?=
 =?utf-8?B?RlVYRUhkZ0JYK29FUjJ4OWN6L1dEOGpib1Z0dTNnMW96dXljc1BxazZ5Q1NC?=
 =?utf-8?B?dUtxUkxCUFd3SGVBczhDZHpCcVRXK2V4S2V3YXlqajhDUVRjZS9uYzByeGR2?=
 =?utf-8?B?RWZxVC85bHltVFpUcjBxYXBKQklXSHY4TlN0bHFPcXRITWtpUUxEdTlleXRC?=
 =?utf-8?B?d2tXYWd2c3RQWHMyY1d6ZmU5OWYzNDUwWUFCeCtNU1F3ZFJWZW5Xa2xvRndj?=
 =?utf-8?B?akdmczRNSHBHUFgwY3o2K1BmT2NIYUF1ZTV1MzhEY0RHRG1XRG80VDZTRm1S?=
 =?utf-8?B?b0RCMFJmYVZHK2RMRmhJQ1dqQVJQZkZPWUJiOWZCb1VMTlV0WlhnQ3NlL05k?=
 =?utf-8?B?Q0pvclV3WmlseTRmdENMRnM4RGJpNEJhbDVzbkFZMFQ0MHFvZ255N1lYOEdU?=
 =?utf-8?B?K3RuZmZIekRSTmNYbzJGUE1UN3lBM2YwZDV5MFJMb3Y2RE9rQmhEYllhcDhj?=
 =?utf-8?B?RmZxQUlLNDJ6djJpVUtEci92REVFVG5CbG40Q2RaT0VoS3ZlVEpwNklEQlFR?=
 =?utf-8?B?UnVNR2czL3VFNUVQZksrRWw2cFl5Q1RvNjhGVkpmRGZmZXZVQmZiSm5ZcEh5?=
 =?utf-8?B?aUpGNjZ3T0RILzN2NzN4dXRTcW8xeGhUTFhPZ2Z1Qlp4SjNJM3hvVlViM1RO?=
 =?utf-8?B?bFdMZk5QK2VvMkNFQWQrZmtnUnl4elBHbUwrUTRhQ0tFYUZpaFdhckEwQkFp?=
 =?utf-8?B?QkJ6NXV0a0J0dGppYVhPZ3k1YzlESzdKc003Z2pKcHEyNlg0ZmVKNlBOTTcw?=
 =?utf-8?B?T1lMUnRvOU5EZFdza0E2ck5aeDFBUmpEdkZ4NDFxUTA0eFR1K28vcW5WbWtm?=
 =?utf-8?B?NjNRWVg0YWswMm9BdkNYUDZtQldQZEVmQ0pvMStmVFA0TEhjZFRBOXh1U1h5?=
 =?utf-8?B?UW01S2tBcXpVQ1dqc1hQZ29CSVNiRE9YRUY1S2cwYTR3bmUzTm84V0dxNk4x?=
 =?utf-8?B?SHh1QTFGM2UzS0VXbWJIUldkT3p5citZT0RySktLSEFWL2E2SEdZR21saEgr?=
 =?utf-8?B?M3NEdWd3TmcrSFZNd2c2Mzd5WHZQbUZ3L2F4L2tUWmg2SXBFakJuYzhFYS9p?=
 =?utf-8?B?bWFxVEhRdzdXNEZ4WHlvQm9pUmtFWVdGR0RMODREU0ZTMWVJcVE2b1NwUUJ1?=
 =?utf-8?B?eHlKcXNzaWhFWlh3Ly9RTDdGS0FQdnhZalpseG5RcmFkVHJ5NTRZb0J5VWpH?=
 =?utf-8?B?KzMyVC8xYkd1bFJlMzNabmNOcFR2L3E2UUJHamNOTTRxNUxGNDJ3V2l1RU5W?=
 =?utf-8?B?YmQ0eEt3NG5TSmVXVzZTc0s1UVVaR29DcGw2YjdYdXBMSmI4YVFmMzNhZHhi?=
 =?utf-8?B?NVdtbDZHNExmTllDWVBHZ3dVem1DRmY2ODEzcUpVeFBlcUNMR2pUN29pNHA4?=
 =?utf-8?B?M1hlam5MTXRydy9kUit3TjdMRi9KdmZXUzhZQkdwU2FBQVR6R0Z2c0NMQ2U1?=
 =?utf-8?Q?+avv9kQmqjA8dzRM=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: ab29c66e-edc7-45b2-c739-08de5a900056
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB6909.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2026 14:59:26.2072 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TrX4E6quTJiSj1mncuBWkXBI1x9m6ElSCd5x49uaqXROcPKxvZcqtEZIp1Zd7octU8q6ABwdjJKkOu2ZgcEa452oEJD3f/R2fsaX9T/lp6U=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB8073
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[gitlab.freedesktop.org:url,gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:dkim,intel.com:mid];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[9];
	FROM_NEQ_ENVFROM(0.00)[sebastian.brzezinka@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 66C02775EE
X-Rspamd-Action: no action

On Fri Jan 23, 2026 at 3:42 PM CET, Janusz Krzysztofik wrote:
> On Friday, 23 January 2026 15:20:16 CET Sebastian Brzezinka wrote:
>> On Fri Jan 23, 2026 at 3:10 PM CET, Janusz Krzysztofik wrote:
>> > Hi Sebastian,
>> >
>> > Thanks for looking at this.
>> >
>> > On Friday, 23 January 2026 12:01:54 CET Sebastian Brzezinka wrote:
>> >> On Wed Jan 21, 2026 at 12:42 PM CET, Janusz Krzysztofik wrote:
>> >> > Users of Intel discrete graphics adapters are confused with fake
>> >> > information on PCIe link bandwidth (speed and size) of their GPU de=
vices
>> >> > reported by tools like lspci or lsgpu.  That fake information is
>> >> > unfortunately provided by hardware, Linux PCI subsystem just expose=
s it
>> >> > untouched to upper layers, including userspace via sysfs, and users=
pace
>> >> > tools just report those fake values.
>> >> >
>> >> > While we can't do much about the kernel side or general purpose use=
rspace
>> >> > tools like lspci, we can try to address the issue with our lsgpu ut=
ility.
>> >> >
>> >> > Correct link bandwidth attributes of a discrete GPU card can be obt=
ained
>> >> > from the kernel by looking not at the PCI device of the GPU itself,=
 only
>> >> > at a PCIe upstream port of the card's PCI bridge.  For integrity wi=
th
>> >> > content of the sysfs and with output from the other tools, we are n=
ot
>> >> > going to replace the fake information with that from the bridge ups=
tream
>> >> > port, only show that port and its attributes themselves while listi=
ng
>> >> > devices.
>> >> >
>> >> > Since the tool uses our udev based igt_device_scan library for iden=
tifying
>> >> > GPU devices and printing their properties and attributes, modificat=
ions
>> >> > that we need apply to that library.
>> >> >
>> >> > As a first step, exclude the fake data from being printed.
>> >> >
>> >> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/10753
>> >> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.c=
om>
>> >> > ---
>> >> >  lib/igt_device_scan.c | 8 ++++++++
>> >> >  1 file changed, 8 insertions(+)
>> >> >
>> >> > diff --git a/lib/igt_device_scan.c b/lib/igt_device_scan.c
>> >> > index abd8ca209e..7753262a53 100644
>> >> > --- a/lib/igt_device_scan.c
>> >> > +++ b/lib/igt_device_scan.c
>> >> > @@ -613,6 +613,14 @@ static void dump_props_and_attrs(const struct =
igt_device *dev)
>> >> > =20
>> >> >  	printf("\n[attributes]\n");
>> >> >  	igt_map_foreach(dev->attrs_map, entry) {
>> >> > +		/* omit fake link bandwidth attributes */
>> >> > +		if (dev->dev_type =3D=3D DEVTYPE_DISCRETE &&
>> >> > +		    (!strcmp(entry->key, "max_link_speed") ||
>> >> > +		     !strcmp(entry->key, "max_link_width") ||
>> >> > +		     !strcmp(entry->key, "current_link_speed") ||
>> >> > +		     !strcmp(entry->key, "current_link_width")))
>> >> > +			continue;
>> >> > +
>> >> Nit: This might be a bit confusing now that the return value depends =
on DEVTYPE_DISCRETE,
>> >> especially for a library. I know it=E2=80=99s extra work to keep it g=
eneric, but maybe we could
>> >> move the check to its own function just to clean things up a bit?
>> >>=20
>> >>=20
>> >
>> > OK, so you say it's not clear for someone reading this why the exclusi=
on of=20
>> > the fake data from print output is limited to discrete graphics adapte=
r. =20
>> > Simply because integrated graphics devices don't provide any fake valu=
es, they=20
>> > respond with "unknown" which I see no reason to also remove from the o=
utput.
>> >
>> > Since I don't understand how moving that piece of code to a separate f=
unction=20
>> > could make things more clear, I think I'll better provide the missing =
details=20
>> > about acceptable behavior of integrated devices to my commit descripti=
on and,=20
>> > still better, extend the in-line comment above that piece of code with=
 that=20
>> > information.  What do you think?
>> Thanks for the clarification. I left it as a nit since I=E2=80=99m fine =
with
>> the change overall. My concern is that this is a library function, and
>> the update makes it a bit less generic. Changes like this can accumulate
>> over time, but in this case I might be overthinking it.
>
> OK, now I understand better what you could mean by "move the check to its=
 own=20
> function".  To keep dumps_props_and_attrs() as generic as possible, I can=
 pass=20
> a flag to it which says "skip link bandwitdh attributes", and hand over t=
he=20
> decision whether to print them or not to the caller, OK?
I=E2=80=99m okay with it. Looking at the rest of the library, I may have be=
en
overthinking it. This library was never meant to be fully generic, so
if no one else has an issue with this approach, neither do I. Sorry for
the confusion.

--=20
Best regards,
Sebastian

