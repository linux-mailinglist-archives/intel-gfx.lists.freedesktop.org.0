Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C34C88409A4
	for <lists+intel-gfx@lfdr.de>; Mon, 29 Jan 2024 16:19:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1F73F10FF8E;
	Mon, 29 Jan 2024 15:19:16 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB66710F9FF;
 Mon, 29 Jan 2024 15:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1706541554; x=1738077554;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=VDaudD4z6LisE21ln0bRJA8tnRTNnFtGaRTaZsVqA6U=;
 b=c6WyuBlN1/NzT2lUwXH3Ll6bEiGZ9tufkRYj1+Ox/VCLiq/826g91Qq4
 mwnHP9hriKQJvDfp69haXUn7flteOlh4nUFfBwzRajdEju/U2Nrmyamnw
 qgBg+td4+UqQibIqgj1aTCRKkMDJWF19RB6zQWXPRJ+YnNLIha7KuNYF1
 IH+wcRqJuECU7geQ92c6hoc9gY/zEsVbkfya4o7bWR5PNsMK6saG4Kdft
 dY0JlSLk5rwNcPEsHebCx24fqPiiSYMR4iKcarf6d22CnZ1tuR4++VbLI
 9254sefjNvLYDTZtPUjn7ViaTT/BOAHjTRfxQiYpBWCd5OnbDFzvh1nGX g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="24455248"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="24455248"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2024 07:19:07 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10968"; a="878094478"
X-IronPort-AV: E=Sophos;i="6.05,227,1701158400"; d="scan'208";a="878094478"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by FMSMGA003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2024 07:19:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 07:19:06 -0800
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Mon, 29 Jan 2024 07:19:05 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Mon, 29 Jan 2024 07:19:05 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.168)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Mon, 29 Jan 2024 07:19:05 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kUylNObEU6u+D/MbrSX6gcfgOBSbEGGx/gz0CCvibAeOaRz5JXk9faMerYsHkQoFJ+CtYdaHQguJc1mRV2UGzrC+wvv/CzQcDK9oFa3IRgtVzS9wdLw3VzDjZFNhlck1CHjFrW/Wv0ovAhcAO9wx8mx1tQd3AUFZB5P8v/htDNZ//QlIaYeHlDjehGh4RjXwMNXUyAkH28R4oLxXjnIg67HulCj4TJGRydD8jeJG1UCl+rz/G/kRW1nyW+A8ApBCBrv/rQaVARpC2dLT2hp/ha/c8Tciz9Ql8JgcxX1Y0D+lBIPnQ21eJFsOEcymMJqaLbVU5KRUwlcNM5lv+9UTlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=qKzL7eHeka5MV3YorHxMBPC4fTWOgYy6ONRON+QGYjs=;
 b=A3cPQ9RcVrUhbAfE/Nt1gBdeRP6BjQ5JHgg8+X4hUELjGyD1HN8/uFFkPG8xWkckqSmjhS18Tak1bDb5ESnM2OIhnBa5K8PxYmC2hcWgwHGCat2MynymZCUZjHdjcEd8FMTdfC+FQ9Vx9Lw/y1cOpr+UmiKTrrcIaFjXOjPZ1larU9AGbFJzzlfDsHU06P+kELIyOehntusgeD5Z1onCTEtiLOp8/7K1SG4zVCwUO5l1Tt+Lfp9tgqF8PY7Kze+siJVyAaAvK0di+0n7MmuN+gmhydpaik7XMCV+LAAW5BPfdhfNWVOStm1kn8r+XxXmRQigkz6S8ox/Kfo95knd/Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CY5PR11MB6139.namprd11.prod.outlook.com (2603:10b6:930:29::17)
 by SA2PR11MB4826.namprd11.prod.outlook.com (2603:10b6:806:11c::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7228.32; Mon, 29 Jan
 2024 15:19:03 +0000
Received: from CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954]) by CY5PR11MB6139.namprd11.prod.outlook.com
 ([fe80::9f32:ce50:1914:e954%7]) with mapi id 15.20.7228.029; Mon, 29 Jan 2024
 15:19:02 +0000
Date: Mon, 29 Jan 2024 09:18:59 -0600
From: Lucas De Marchi <lucas.demarchi@intel.com>
To: "Dixit, Ashutosh" <ashutosh.dixit@intel.com>
Subject: Re: Re: [PATCH v2] drm/hwmon: Fix abi doc warnings
Message-ID: <jtcdppz64bkh66xajht7pb7yoj72mgukdxwumzgihxfgqvu3ss@pwntoir6mrth>
References: <20240127165040.2348009-1-badal.nilawar@intel.com>
 <85ttmyczbz.wl-ashutosh.dixit@intel.com>
Content-Type: text/plain; charset="us-ascii"; format=flowed
Content-Disposition: inline
In-Reply-To: <85ttmyczbz.wl-ashutosh.dixit@intel.com>
X-ClientProxiedBy: SJ0PR03CA0233.namprd03.prod.outlook.com
 (2603:10b6:a03:39f::28) To CY5PR11MB6139.namprd11.prod.outlook.com
 (2603:10b6:930:29::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CY5PR11MB6139:EE_|SA2PR11MB4826:EE_
X-MS-Office365-Filtering-Correlation-Id: 3fbde5b8-40f5-4752-0e97-08dc20dda019
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: EBIMQ4kfB1Lnc+pvQD1HHgUPgAeJRJfIXlwVF6Z5De6Cs4GLK64MSJaLmNMWfV+gRgr7ACyCluoXBPfkV6qMxgqarWK0hHIdZXMY4Efzbb17iYtMfXAmddE1/IZR5IanlUg0HOdrHKeeBdERPs1asVCl0npqKzihxGBqCHpwu1pGKIrVB9X4lWrK2DJS95qw9p6Nmq5QD5i5O2zDX3HLfHBAQoKM7IDf2XFSb46K6gbqiSR9OjfCrVILLZLjUmZEmvrk3jLDuc0A0B7/Wr6OiWr0FGD10IdzXV2ztLNxmK1MF9vTk/RtZlGvedhEnBfeeeM1IfRJ7n65mp51HFu/YMLZ+BKmMng30J6stBhwtYEuV+AcfFT0JnyB02PfXYWQRahX27YNy4xzca23wdzU0ckuVk17KiGY4QmQ0hV2IxtJPRkBgMWiMckDD9smoFUhlAO+VfFUoZe2i3ptnypadigljIof+0gZK6sjOLDfiV4DngopJwl5ue8Dg9FbrQL2NpAgbFPUI1pZpuTemf9KO6y1nK5TIS//sM+AuP5azknYzWFqrSIotJf+7i7B0Z99MGrzdR9VJ/v+aFrE5b9GzRYSZHK6pjuaYijIzU9c/rXF8jP+M1z6dv0ogY8KszLp
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY5PR11MB6139.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(7916004)(396003)(346002)(366004)(376002)(39860400002)(136003)(230173577357003)(230922051799003)(230273577357003)(64100799003)(186009)(451199024)(1800799012)(26005)(83380400001)(6512007)(6666004)(6506007)(86362001)(82960400001)(66946007)(5660300002)(8676002)(41300700001)(33716001)(8936002)(4326008)(6862004)(38100700002)(9686003)(316002)(478600001)(66476007)(66556008)(54906003)(6486002)(6636002)(2906002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?iS7/AVv8fQEHu8i+Fwf7ur9rAgEhRrShFCMtiQZg/8EimN+aUDD+s1TnAZXQ?=
 =?us-ascii?Q?xwPF5q4VwnkNoh7ktjlvrtlbFuHuHmPWFlfboezf3xIzp2H0U5PSA03hFs4W?=
 =?us-ascii?Q?P+eW+lO2FBNUjmOLPnlNXjgR0VUUqtcviuPjmr1utsDzuUSYd+MZsYBQ56Ym?=
 =?us-ascii?Q?z9cCKt6u251xlTRmpepQKDNR0ffnhy3HxGrErTspJdPxLEwona2xbvcx+SKX?=
 =?us-ascii?Q?X5z4UW5cTvNwVweNvT/EurCpEnWPBOHDrN8hlr1du9ngFvzI00J8lN+uoJih?=
 =?us-ascii?Q?5HLxqCveI/F3FH9v2uY9gqEdl2LjfcbgMxbKslGPGiZO3qU2akCyKKjYlHzi?=
 =?us-ascii?Q?4uNQAfvtG8uzriC9DmH4X6/QvrpubjmPAUNOP43xyjjfsKxxGx1q/7gj/65x?=
 =?us-ascii?Q?BKJsYE/tbbenw/XV+oS6HdEfe0Je0cJ+P6dJmJnwkyhYmWR/IRQhNA1itam8?=
 =?us-ascii?Q?drElFd27tJCq6fS4alKwrsOiug72br84nKrGd0zph182iov6I/3079x4XUrp?=
 =?us-ascii?Q?TSKid+otQ1nC3pp2KxwTvgTvnYoKrkS5ho1rEWZbRXc4U72H7/9Fam1nxc/v?=
 =?us-ascii?Q?HMMK2gjLbDjk+nB3O9PZ1R4wo2w5tt8v1uzfdJZ4WO1Nmu7FlGfU6yIPKvcV?=
 =?us-ascii?Q?mH7UXhC4peHhtJO32qz5N1TqeAf+Ww1925+wb9Zti6+yJ/AxYfYaJjf4Whue?=
 =?us-ascii?Q?CvwUDm8pkyDTz1MKRc3NIKNvOIVp1fFSLmED3bKFmFvoAHnCStJnXiZAOCID?=
 =?us-ascii?Q?Awn6uzByqhy0y5O+DOXOntkscvq8L26xhZKTO1RU/pLs3jOrE8XEp2wRwCmc?=
 =?us-ascii?Q?kb5/6ogny5rDEio2nAJTON/Q8xUaxQkerkUT4rJ0iVPV3HwnCn0dAWJfTedr?=
 =?us-ascii?Q?AOPDPqgRawMzws+m2Yqke6kSdhQd6EvJcj2LF8K8kY3WXY9Kp0cPGYhK18k3?=
 =?us-ascii?Q?ZrRsILTlj1pWEd/me3Jp/byejQIbQyP8kHXcItPYzW4ZyPuyAljz3FSfoXE/?=
 =?us-ascii?Q?d78jVBw8YY6QYCfEuYuqPJTBbgZtkuzG516AzutBEJ5BNlDctEf12JyTAJgX?=
 =?us-ascii?Q?oKlXgB+5YRklU2/gUiR7pSkgoq5AwwUDOMl/6iPaziOmxL6nmps2+wux0s7+?=
 =?us-ascii?Q?l3qqIXCiwmiKmoTiQf3YbkB1WSHiTZdEqtDaBMbSNxbtLwzMrH/G+k2A1x6F?=
 =?us-ascii?Q?/CjUXdEkexM4GA/q3Kb0jESi3C2+L05yTKEv1vL8XBM+Uea+SrFe609Te/Bk?=
 =?us-ascii?Q?lObsRX0upHW1nQdyOwkG3D710U8iCmFzRp8j01iJUWxrWK9NRSOmvnUgI0vF?=
 =?us-ascii?Q?P8i0cY+FwRrjoFWSPbARo90jUI0jWHD/PYpLVXgcmlJCAZbBwPz0GRRaWKSe?=
 =?us-ascii?Q?mTCHh1s2KAxjj6OhQnvdiyM6O03E7yN5K26NcZ7r7Bor+R7r4TE7dfpaP87M?=
 =?us-ascii?Q?y9AGw8hdOPY4DH+5quUaffB5DDzPH/YmRE2NlAcfcc+9aQ271UhAuLY7KT3b?=
 =?us-ascii?Q?K/kJCLoaah8sayxULF9b886B+Ky2f17DypDBwnAwqp+CM8/SL2mEHMOT8SqE?=
 =?us-ascii?Q?G6dUqPsKnYJ+G89ftd3vlpgnIjm7T3QKfJFGfyNFp9aSee4PslASf/+FHIVL?=
 =?us-ascii?Q?cQ=3D=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 3fbde5b8-40f5-4752-0e97-08dc20dda019
X-MS-Exchange-CrossTenant-AuthSource: CY5PR11MB6139.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2024 15:19:02.7220 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: fdiDQyqVetLW7zC7Bm62i7by3t0cqUVe0atvKWo0pZV6Fc5Q7+cv5k2JvrSw91GDdNAfN9cPUkQ4by3I76Zv2m50n2Cs4K0RD9vDnlUdOpU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4826
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
Cc: intel-gfx@lists.freedesktop.org, thomas.hellstrom@intel.com,
 rodrigo.vivi@intel.com, intel-xe@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Sat, Jan 27, 2024 at 12:10:08PM -0800, Ashutosh Dixit wrote:
>On Sat, 27 Jan 2024 08:50:40 -0800, Badal Nilawar wrote:
>>
>
>Hi Badal,
>
>> This fixes warnings in xe, i915 hwmon docs
>>
>> Warning: /sys/devices/.../hwmon/hwmon<i>/curr1_crit is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:35  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:52
>> Warning: /sys/devices/.../hwmon/hwmon<i>/energy1_input is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:54  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:65
>> Warning: /sys/devices/.../hwmon/hwmon<i>/in0_input is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:46  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:0
>> Warning: /sys/devices/.../hwmon/hwmon<i>/power1_crit is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:22  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:39
>> Warning: /sys/devices/.../hwmon/hwmon<i>/power1_max is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:0  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:8
>> Warning: /sys/devices/.../hwmon/hwmon<i>/power1_max_interval is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:62  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:30
>> Warning: /sys/devices/.../hwmon/hwmon<i>/power1_rated_max is defined 2 times:  Documentation/ABI/testing/sysfs-driver-intel-xe-hwmon:14  Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon:22
>
>/snip/
>
>> diff --git a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>> index 8d7d8f05f6cd..92fe7c5c5ac1 100644
>> --- a/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>> +++ b/Documentation/ABI/testing/sysfs-driver-intel-i915-hwmon
>> @@ -1,4 +1,4 @@
>> -What:		/sys/devices/.../hwmon/hwmon<i>/in0_input
>
>Are the warnings happening because this path doesn't exist?
>
>> +What:		/sys/bus/pci/drivers/i915/.../hwmon/hwmon<i>/in0_input
>
>So this I guess could also be
>
>/sys/class/drm/card<n>/device/hwmon/hwmon<i>/in0_input?

no. the issue is not that it doesn't exist, but that the same path is
documented in 2 different places. If the interface is exactly the same,
there could be just 1 place to document it and then reuse the same file
(without the module name). If the interfaces are not identical, then we
should differentiate them like is done here.

+i915 maintainers

Are you ok with merging this through either xe or i915 trees
instead of splitting the patch? My preference is the first option.


Reviewed-by: Lucas De Marchi <lucas.demarchi@intel.com>

also tested that this fixes the issue when building docs.

thanks
Lucas De Marchi

>
>But no need to change, what you have is also a valid path. But maybe to
>make clear:
>
>/sys/bus/pci/drivers/i915/<device>/hwmon/hwmon<i>/in0_input
>
>?
>
>But anyway...
>
>Assuming you turned on the htmldoc build option, could reproduce this and
>verified that this patch is fixing these warnings, this is:
>
>Reviewed-by: Ashutosh Dixit <ashutosh.dixit@intel.com>
