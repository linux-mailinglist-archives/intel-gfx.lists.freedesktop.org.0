Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ABD0682F98
	for <lists+intel-gfx@lfdr.de>; Tue, 31 Jan 2023 15:46:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AFE310E34E;
	Tue, 31 Jan 2023 14:46:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com
 [148.163.158.5])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 99FFE10E119;
 Tue, 31 Jan 2023 14:46:27 +0000 (UTC)
Received: from pps.filterd (m0098419.ppops.net [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id
 30VE0Fhe019152; Tue, 31 Jan 2023 14:46:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ibm.com;
 h=message-id : date :
 mime-version : subject : to : cc : references : from : in-reply-to :
 content-type : content-transfer-encoding; s=pp1;
 bh=Cqc3HSkSdww8bGOaShAhMgF85gNR3Pp6Yw7MnUfKv3A=;
 b=NYE3a0rIwVk9hIadFNk+wOPmH8yTAMVdiefS2DqD/E5C1XgiYBlv2yXW6W9S5ba+oIWQ
 gP3+ynQa5sm6Cf2w6MSCp2+0412034XaJW3RYuSo4x3DpgWaQV/AUfu1qsNuTDAPpRjB
 TsWib6W87mbI7jTO5tpdRHYTWudBaCBWcAGh/WyL8VLsJjSqb+93w3vFQ+ux6+Md4LJ0
 GTLrK7RdRXPNPkGFk1+RY45u/xYkOpG5eyDLdSdcxE3j0mXf8heEdcKSm8bukYyLnGE0
 XCB0WlQ4eLMWvxtUwD8vyPzULiJtowsNT5kPaBrf+T/HoN5sBhTZVNO90RlYu8WP4zK/ kA== 
Received: from pps.reinject (localhost [127.0.0.1])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3nf4cb1ar4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Jan 2023 14:46:23 +0000
Received: from m0098419.ppops.net (m0098419.ppops.net [127.0.0.1])
 by pps.reinject (8.17.1.5/8.17.1.5) with ESMTP id 30VE1K1q023821;
 Tue, 31 Jan 2023 14:46:23 GMT
Received: from ppma03wdc.us.ibm.com (ba.79.3fa9.ip4.static.sl-reverse.com
 [169.63.121.186])
 by mx0b-001b2d01.pphosted.com (PPS) with ESMTPS id 3nf4cb1aqq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Jan 2023 14:46:23 +0000
Received: from pps.filterd (ppma03wdc.us.ibm.com [127.0.0.1])
 by ppma03wdc.us.ibm.com (8.17.1.19/8.17.1.19) with ESMTP id 30VC3Tbl007760;
 Tue, 31 Jan 2023 14:46:22 GMT
Received: from smtprelay06.dal12v.mail.ibm.com ([9.208.130.100])
 by ppma03wdc.us.ibm.com (PPS) with ESMTPS id 3ncvterhfs-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 31 Jan 2023 14:46:22 +0000
Received: from smtpav04.dal12v.mail.ibm.com (smtpav04.dal12v.mail.ibm.com
 [10.241.53.103])
 by smtprelay06.dal12v.mail.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id
 30VEkLtt9634476
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Tue, 31 Jan 2023 14:46:21 GMT
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 0E90D5804E;
 Tue, 31 Jan 2023 14:46:21 +0000 (GMT)
Received: from smtpav04.dal12v.mail.ibm.com (unknown [127.0.0.1])
 by IMSVA (Postfix) with ESMTP id 4DDC45805A;
 Tue, 31 Jan 2023 14:46:19 +0000 (GMT)
Received: from [9.160.68.138] (unknown [9.160.68.138])
 by smtpav04.dal12v.mail.ibm.com (Postfix) with ESMTP;
 Tue, 31 Jan 2023 14:46:19 +0000 (GMT)
Message-ID: <b0ed98f6-3586-3151-47e7-9ec86d6c716d@linux.ibm.com>
Date: Tue, 31 Jan 2023 09:46:18 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Content-Language: en-US
To: Jason Gunthorpe <jgg@nvidia.com>
References: <20230120150528.471752-1-yi.l.liu@intel.com>
 <67ec09bf-cb24-34e3-6ec4-1ae87b0738bd@linux.ibm.com>
 <Y9km+xezgD4ovjDX@nvidia.com>
From: Anthony Krowiak <akrowiak@linux.ibm.com>
In-Reply-To: <Y9km+xezgD4ovjDX@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-TM-AS-GCONF: 00
X-Proofpoint-GUID: 1fzfJzMuXnx2wUXed_vrg45H43lWmSaE
X-Proofpoint-ORIG-GUID: H89OKK23Uz9PR6J4ex_TDF792Od8jPzo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.219,Aquarius:18.0.930,Hydra:6.0.562,FMLib:17.11.122.1
 definitions=2023-01-31_08,2023-01-31_01,2022-06-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0
 suspectscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0
 mlxlogscore=999 bulkscore=0 adultscore=0 priorityscore=1501 phishscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2212070000 definitions=main-2301310131
Subject: Re: [Intel-gfx] [PATCH] kvm/vfio: Fix potential deadlock on vfio
 group_lock
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
Cc: mjrosato@linux.ibm.com, david@redhat.com, farman@linux.ibm.com,
 imbrenda@linux.ibm.com, linux-s390@vger.kernel.org,
 Yi Liu <yi.l.liu@intel.com>, kvm@vger.kernel.org, pasic@linux.ibm.com,
 borntraeger@linux.ibm.com, intel-gfx@lists.freedesktop.org,
 intel-gvt-dev@lists.freedesktop.org, frankja@linux.ibm.com,
 jjherne@linux.ibm.com, pmorel@linux.ibm.com, seanjc@google.com,
 cohuck@redhat.com, linux-kernel@vger.kernel.org, pbonzini@redhat.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 1/31/23 9:34 AM, Jason Gunthorpe wrote:
> On Tue, Jan 31, 2023 at 09:27:54AM -0500, Anthony Krowiak wrote:
>> I encountered a lockdep splat while running some regression tests today (see
>> below). I suspected it might be this patch so I reverted it, rebuilt the
>> kernel and ran the regression tests again; this time, the test ran cleanly.
>> It looks like this patch may not have fixed the problem for which it was
>> intended. Here is the relevant dmesg output:
> Well, it fixes the deadlock it intended to fix and created another one
> :)
>
> It means device drivers cannot obtain the kvm lock from their open
> functions in this new model.
>
> Why does ap need to touch kvm->lock? (via get_update_locks_for_kvm)


We need the kvm->lock because we take the vCPUs out of SIE in order to 
dynamically change values in the APCB.


>
> Maybe you should split that lock and have a dedicated apcb lock?


I don't think that would suffice for taking the vCPUs out of SIE.


>
> Jason
