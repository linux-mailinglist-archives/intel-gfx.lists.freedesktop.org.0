Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DC928709E2
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 19:50:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DEDC610E2F1;
	Mon,  4 Mar 2024 18:50:38 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hlVLS8KW";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBC5110E2BD
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 18:50:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709578237; x=1741114237;
 h=content-transfer-encoding:in-reply-to:references:subject:
 from:cc:to:date:message-id:mime-version;
 bh=tPGvHSRorHF3ZYW9j5rOkZwlu7r7iKuNb3TrH1q7FAE=;
 b=hlVLS8KW3AtmbctmkSvnvCvr+hpNWbWa0YBK4Y0CuPBpRKG9gvXYtcxk
 U5x9MfWlStdYcJCT/pt/8PIj1UdnT8Ov76cXXbqR8ABHFjmzRptOBg84E
 DzB7iPaso6z2l7G4F0k5VUaL6vTVbteWv6wsXJEKT9uce0K0QZ21F3CFj
 +MTI6Ev0AMLitcds/poQcKZu8J9SCQzXArhrYxjA43+t3jv5XivBy++f6
 5oPP+lCQnFdrDAzVXWYcF0KSTUMyP0wNTmc+BzrLUEm1DfTJ87VrVTJdv
 mIU6zM48wvrzglE3GICnfZxVAy3BjriPJbQ2Ne2X4wuduewqOH15itmTD Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,11003"; a="14736036"
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; d="scan'208";a="14736036"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 10:50:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,204,1705392000"; 
   d="scan'208";a="9495872"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Mar 2024 10:50:36 -0800
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 4 Mar 2024 10:50:35 -0800
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 4 Mar 2024 10:50:35 -0800
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.101)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 4 Mar 2024 10:50:35 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G0RFe8nbRit9XX7qkc8osGILuvcgrlNEg4fZgFMB/GA5dPN02XsseNjqY7t73kI2VHoCk8Y7DesyUN7GWLZMdOJr+IQcwH5NkqkGNHCvdzjO7qhJVs+eLhZvKBzYUyF9I6lQKiGIvigXYU3m9uP/1ddM4wB1mJ1yD2LlPobCM9UOirv7NfDg759vyg8ZC/RYrYQjvvlr0IbnNHLZnDrs+4/5h7MNpMF6P1jv9kD2/AV4qmNsEsS9ybKpUXqMEZ1U1GTeD7HDmPnMQeu7yol7U/AA4Ovm08gMN9VrbdxuBp2/lDuJt8l9+yCak5PNUAF+5lBfM6IrrZERjiDNwxZIUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=tPGvHSRorHF3ZYW9j5rOkZwlu7r7iKuNb3TrH1q7FAE=;
 b=CR7QRfIuMHhDw3o0GOf51mZhJZ72Aaxl1lePbZobGi5sfWp0flUA6K9gPe6o9nHS+hURzbf6vBPl7Wsy7/E7/HDsGwsHPv7zv/PwtUhoju3i7LVkivPFg+xSh7+2BtCJ4MIoFhkoBU/sKDy5BwmymrQCfJXPHRYOKqX3b3/wnyqrT5uRZmeQaFz0Jyw9hDWwnLnGci4n9luOVpfxiBfiW/VuKMp2/+OAC2StfEKA6tusvs42Nulru3CTv53rz9i19PLmVSqdS4l/HfqhbtkBSHPMx8fCbKVEyedEzP+NRgkS7OobmGrjki812KjWwl7MXUk518p82R7NCLI4t4nPpQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH8PR11MB8287.namprd11.prod.outlook.com (2603:10b6:510:1c7::14)
 by MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7362.23; Mon, 4 Mar
 2024 18:50:32 +0000
Received: from PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b]) by PH8PR11MB8287.namprd11.prod.outlook.com
 ([fe80::3a8d:b57a:4dae:a25b%7]) with mapi id 15.20.7362.019; Mon, 4 Mar 2024
 18:50:31 +0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <26b528644757ececf951e46e14d56981f3ec1c9e.camel@intel.com>
References: <20240222125634.275047-1-vinod.govindapillai@intel.com>
 <rjprf5shfn7ewh6dvdhd2bdhy3o4d5ncffadd5p6hvanuycbbr@k56on5zkxcqs>
 <f6b4f07048371afb1d61f122bd3d4d2b9a3b2233.camel@intel.com>
 <170861789903.2814.7356806408680497622@gjsousa-mobl2>
 <26b528644757ececf951e46e14d56981f3ec1c9e.camel@intel.com>
Subject: Re: [PATCH v1 0/6] LNL display
From: Gustavo Sousa <gustavo.sousa@intel.com>
CC: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>,
 <intel-gfx@lists.freedesktop.org>, "Roper, Matthew D"
 <matthew.d.roper@intel.com>
To: "De Marchi, Lucas" <lucas.demarchi@intel.com>, "Govindapillai, Vinod"
 <vinod.govindapillai@intel.com>
Date: Mon, 4 Mar 2024 15:50:26 -0300
Message-ID: <170957822620.2209.13473455706389193834@gjsousa-mobl2>
User-Agent: alot/0.10
X-ClientProxiedBy: SJ0PR03CA0341.namprd03.prod.outlook.com
 (2603:10b6:a03:39c::16) To PH8PR11MB8287.namprd11.prod.outlook.com
 (2603:10b6:510:1c7::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH8PR11MB8287:EE_|MW4PR11MB7054:EE_
X-MS-Office365-Filtering-Correlation-Id: f9a3f988-7385-4c19-2264-08dc3c7bf797
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: louY/R2Gm5jePXwGMlgsDMhxB9j56sL1krvxqPCh7xGB5sNy3SA44ne0GkqC7wPUL/ywprZqE95SftbMELUfPYE9OpXUP+glvXrpGRk2FL3lFTkqn6PuQ6oD9kFy9T9QQ12emEGcaz4nlAipp6gOAVvqimz9Vulg4psNAxU+i1JF+NAyhEgCCVeFzEDZqG7RwYcnbNVscwvrT708JkdpiyCpngjhQCJrI7tc0KPa3lriVJptvRWvVmCBdedHTSQBbKJT3Exy9NXd3obWtlKqZ1UPY6v6CLljMoQGWvHKVbEnp3OpSivrD90klKuah//pHBWRpMBBi87JQXEboM0qOtOhAjErSIw0ekH40VQgJFUL2flXS0JBNIaSIHOiGu6PWNRIWpnnJOAxaKgQ09LjyPG0ud9IVzys3Jn5n2P+yKMtNQp961wB3wfjDjQClEHQNbMPWm5GoAifRo3gwZcxYZ7GfJqLUm7KgJtTaTXxh3KG7QBMIJET+8BvbjftkU8MZA+r77eWUeqJOe/7rSs8h7DTj3g+8qcOHv4ExYc7oPT8odcHcFLS45r6kHKwLRQmcX487d+VGWZkdQ4E6fNhV8fyfKMFl6qm7OZ8DQuklGSNSLGfAbku4Dt0EjkP8dB1
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH8PR11MB8287.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WEhEZC9mYVJ4WCtZaHpXcFJkQlJFZTV6MFB5dHRkREF5RVZzNHJwaW4yOHEz?=
 =?utf-8?B?L0t5Sy9rZ3BuN21icVBSVGxCbjZSSW5EdW45ajYyOHd4OE05dFRrdi9QQmkz?=
 =?utf-8?B?U3hzNnJPNGh6N292dzR4elZ2QjJBd0NXK3k4RXIwZmk3eVAvMC9UY3VnM0da?=
 =?utf-8?B?aWFUMlhYSWpvY0JJVzlpYnJNemplVCsxdVp1K3VlalNLbGFQeldlQlhKWG1t?=
 =?utf-8?B?YW44NVJCcWxNNXFQREYrNG9GYWFCcXJMRUUxVTU1d3hkQ3hsdHloVXNETm05?=
 =?utf-8?B?aW96K0xIeEE5Ull4L2loNHBKRTNIbUpUbUZYRGtnS3pxMFNqT0NKY0p5b0Rs?=
 =?utf-8?B?SXIrTzliNFhCbDY5cVdGcUdnajhDcGNwVitkazlwcjRINDllUDFGZVdnello?=
 =?utf-8?B?WFdaWmhUR3E4cGVjaWtSdTEwczYwOUsvQ0hXRkgvS0E3K2drTUd2RVZOTFNr?=
 =?utf-8?B?REhxVXlqNkZuSUkwbXRyeVhuZXlaZFh5QlcyaDdOLzhCQktpMzRsdFA1aVIy?=
 =?utf-8?B?QlFsUFhyUEIyaDdMSlF5bjNlcXVkR0NHYWRnL25ybjI4UkR3TXdrWWI5eFNx?=
 =?utf-8?B?eDV5VWRkdkRyTlJEWUFUTDRPNEJRN3JjTmJOTGNpOWUydDZPaFNvZEpiWE9r?=
 =?utf-8?B?cVIrNTlOUTFEeDk2OGE2cFEvZk9HU211VkgwYmNsM21qZE5XbGptUyt6elNW?=
 =?utf-8?B?dDR0QTFzMUQvdkoySmtId1JZZmdnb2cvcXlMaGtta3E0OExjSWs4WnRrdWQ5?=
 =?utf-8?B?and4Q3BuR3FwZVdPUmY4bHoyWW9SVUljNHliWXhxNXAvczc4emFPMmtoV1NM?=
 =?utf-8?B?MTVHSWdBRGJ2SXphVTFJSU5ETnRSMm5PbEhvMzE0cWhHdTBQVzJaSC8rdzlH?=
 =?utf-8?B?OXVaVlk1NTlNWG5EMUZFbGd1ekpKcjJZd3A2RzBteWJ6NnFYZE5saXhCQjIr?=
 =?utf-8?B?aldrSmFnd05uWTVPWGRwNExBMVhxZkdnQ1doenI0bnZoZGxBQUwxMDMyYzRo?=
 =?utf-8?B?K2J0MGkzNkZRU0svVGgzZHNqby9PYmdYVjdyUXUrdXp0VUdaYWJ2akhaRTRv?=
 =?utf-8?B?WHN4OS9TTVRibGF5akwwQUFDRFZKNGFtRzRNWUk4Y0Uzbmw5QytxRS9xRnMv?=
 =?utf-8?B?VDR3bWw1R1BrNTBSRXZycC80cFhuZzhKRDFaT3pvVnBoMElDVDR6Qnk2QllP?=
 =?utf-8?B?eldwNjBZVCtZOHVYT1NTa1JKK1JzZUtXQ2hER1o2QStueWtmYlBrWUFHNXBu?=
 =?utf-8?B?TVRPVFhWTG9nTmRGN3lOWHQwQThIRmFET015NGJRWHo1Y29TZTFoWXYwOGg5?=
 =?utf-8?B?SG55SFpPNXFZR2tRNUFUSUhXbmhmTnBTZHgyRFpUcWRKWjJKWGtJZVNKRGpX?=
 =?utf-8?B?ckNWeWlZMTdpUHRDczIzejhxV0Jkd3VuMm5TaFJZTGZRcVBSUHlyZzlqK0Vt?=
 =?utf-8?B?dHVvdFQxUWFPeGhBRU5LZ1RtYm9wRmxLV3ZJSkdFZzBVVFJ3RXQxSkFjdDJm?=
 =?utf-8?B?bFJVbGJZbmNRaE9UMWo3QzlUazN0SDNHcXIrbnFtZUxiUzYvalEvdlM4VCtz?=
 =?utf-8?B?YWZqUGxUQ1lEZFQ1MTc5R29heUpmVVNyUEM2WXRhbUw3QkVNNFpnTUFqRHJv?=
 =?utf-8?B?Wkp5b2tvK3pPcmhnWDlZdFptNkNYQkJ0WlRkR3I0eWlPMDg2YzU1bXVULzc0?=
 =?utf-8?B?SURKYUJkcXdUeE1ZRmVVRnRsdFBTMzBTemU0Q3dHNzN5dE02SlZxQlRzc1BL?=
 =?utf-8?B?b2xUQTNZQ256R3paSTUzQmhiNWc0bzMrVzBPRDY0WFBrNU4vOWpRUUR2YzBx?=
 =?utf-8?B?OXlhandKTzZWK3ZaNjVUbmFFZE50aE1BTFJyb3c0UEhYeE1rOXhYektvelFP?=
 =?utf-8?B?K1k4RGhhaE5pNnRUODhPZU9sLzlHT1ZJSEVwZjFYZ09aeWROYWpaNnlBZkZa?=
 =?utf-8?B?VjBwNDV0ZFU4WDVNcGk4ZXlXQkNHVXRFU1VrRm0wRVNlV3VhRFQvbytWRjBS?=
 =?utf-8?B?TzQwQ1dPNVp5VzVXMHZtSW82MUV4eThCWGhyTjYvL0pIOGM4T2xQTVp4Uy90?=
 =?utf-8?B?aG9nUlpkMzVNd24vT2dpM3Vlc0ZGbDRkV0g4dWRWc1hqSGdOQ0ZXMUZ2Nkw4?=
 =?utf-8?B?MHR5clFDNjVXNDNSV2sxQVYvT0F4VkNhWGs3QUxsenMzS2owbWd0YlcxMERm?=
 =?utf-8?B?dFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f9a3f988-7385-4c19-2264-08dc3c7bf797
X-MS-Exchange-CrossTenant-AuthSource: PH8PR11MB8287.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 04 Mar 2024 18:50:31.5268 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3tgtxm/lW4tCs2TCaFYl1ZaFxt+8/3olSUIq2xvydNhl0Kz+ndYniQXF5wcj+PKmLzGOFRQsdJCoj01/6Nbw2w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB7054
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

Quoting Govindapillai, Vinod (2024-02-22 14:18:53-03:00)
>Hi.
>
>
>
>On Thu, 2024-02-22 at 13:04 -0300, Gustavo Sousa wrote:
>> Hi, guys.
>>=20
>> (This is a re-send, because I *think* my MUA badly formed the address to
>> the mailing list.)
>>=20
>> Quoting Govindapillai, Vinod (2024-02-22 11:39:32-03:00)
>> > Hi,
>> >=20
>> > Well.. sorry.. I didn't know Gustavo is already working on this!
>> > @Gustavo, pls ignore this series if you are arealdy working on this. P=
lease let me know
>>=20
>> Yeah. I have a couple of local fixes to apply to those commits, but I'm
>> not finished yet. If you are okay with that, I can finish what I've
>> already started and send a fresh new series (considering that this
>> series has no modifications to what we already have).
>
>Yes! Please do so!

It turns out that I ended up rewriting our logic and, as such, created
new patches as a result. Series is available at

https://patchwork.freedesktop.org/series/130689/

--
Gustavo Sousa

>
>
>Vinod
>>=20
>> --
>> Gustavo Sousa
>>=20
>> >=20
>> > On Thu, 2024-02-22 at 08:02 -0600, Lucas De Marchi wrote:
>> > > +Gustavo as he was looking at upstreaming these patches.
>> > >=20
>> > > Were the issues with mdclk handling pointed out at latest attempt fi=
xed?
>> > > =C2=A0From the changelog it doesn't seem so.
>> > >=20
>> > > https://lore.kernel.org/all/20230908224303.GX2706891@mdroper-desk1.a=
mr.corp.intel.com/
>> >=20
>> > Yeah.. i did not notice these comments! Lets wait for Gustavo's reply
>> >=20
>> > BR
>> > vinod
>> >=20
>> > >=20
>> > > and also worth taking a look at previous versions:
>> > > https://lore.kernel.org/all/?q=3Ds%3A%22Introduce+MDCLK_CDCLK+ratio+=
to+DBuf%22
>> > >=20
>> > > Lucas De Marchi
>> > >=20
>> > > On Thu, Feb 22, 2024 at 02:56:28PM +0200, Vinod Govindapillai wrote:
>> > > > Rest of the cdclk patches as well as the patches to enable the dis=
play in LNL
>> > > >=20
>> > > > Balasubramani Vivekanandan (2):
>> > > > =C2=A0drm/i915/xe2lpd: Load DMC
>> > > > =C2=A0drm/xe/lnl: Enable the display support
>> > > >=20
>> > > > Ravi Kumar Vodapalli (1):
>> > > > =C2=A0drm/i915/lnl: Add programming for CDCLK change
>> > > >=20
>> > > > Stanislav Lisovskiy (3):
>> > > > =C2=A0drm/i915/lnl: Introduce MDCLK_CDCLK ratio to DBuf
>> > > > =C2=A0drm/i915/xe2lpd: Write DBuf after CDCLK change in post plane
>> > > > =C2=A0drm/i915/xe2lpd: Update mbus on post plane updates
>> > > >=20
>> > > > drivers/gpu/drm/i915/display/intel_cdclk.c=C2=A0=C2=A0=C2=A0 | 74 =
++++++++++++++++++-
>> > > > drivers/gpu/drm/i915/display/intel_display.c=C2=A0 |=C2=A0 5 +-
>> > > > drivers/gpu/drm/i915/display/intel_dmc.c=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 |=C2=A0 9 ++-
>> > > > drivers/gpu/drm/i915/display/skl_watermark.c=C2=A0 | 35 +++++++--
>> > > > drivers/gpu/drm/i915/display/skl_watermark.h=C2=A0 |=C2=A0 1 +
>> > > > .../gpu/drm/i915/display/skl_watermark_regs.h |=C2=A0 2 +
>> > > > drivers/gpu/drm/xe/xe_pci.c=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=
=A0 1 +
>> > > > 7 files changed, 118 insertions(+), 9 deletions(-)
>> > > >=20
>> > > > --=20
>> > > > 2.34.1
>> > > >=20
>> >=20
>
