Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +BLNHfWeoWl8ugQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 14:41:09 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CD5D1B7CB2
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 14:41:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0AB3510EB6D;
	Fri, 27 Feb 2026 13:41:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=columbia.edu header.i=@columbia.edu header.b="NZaA/URT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mx0b-00364e01.pphosted.com (mx0b-00364e01.pphosted.com
 [148.163.139.74])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F2D2810E848
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 00:05:36 +0000 (UTC)
Received: from pps.filterd (m0167075.ppops.net [127.0.0.1])
 by mx0b-00364e01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61PNN4Ov3370949
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 18:44:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
 cc:content-transfer-encoding:content-type:date:from:message-id
 :mime-version:subject:to; s=pps01; bh=05jgbknsbqZP1uCdgxmv7u4HMp
 tdcfek0XZsU81eJwo=; b=NZaA/URTtN755x3xQdd19/fuZUZtYv1FQpcevc3XwH
 GiJ5HRxGcY9iy/OYljXRxusFlBguMsPnyZDcmgj6ga3FB3ZEB6s8V8MYK1RQkRqs
 73E3y2Il0kMvjM1FeCKvErS6Ge1o+L/OrnSKHrzy/0gMDrz4XGhlptm9EW5EZsiN
 KbNXNDLUxHRAHYoImMhwtPfSo5MKLD5TPNctjPWYbFCDuzg3+QLXfj4h+8nzvl+h
 eF35anfVfxgICHTPN/s3s6nvmvXB97+RSUwbstEdYahxR2kI4oqGBDlsjZPhkjFA
 35Gntn163Y2SMifNAIheBj42FBACqKtXgkrnpRQmM3NQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com
 [209.85.219.69])
 by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 4chs0qf8ru-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 18:44:40 -0500 (EST)
Received: by mail-qv1-f69.google.com with SMTP id
 6a1803df08f44-899b12d76adso29866166d6.2
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Feb 2026 15:44:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772063080; x=1772667880;
 h=cc:to:content-transfer-encoding:mime-version:message-id:date
 :subject:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=05jgbknsbqZP1uCdgxmv7u4HMptdcfek0XZsU81eJwo=;
 b=d20x74Ebk3Ec7PRBTBIJg9m/Dc44kWftVWCyL0xY9F8639ytYt0tR6/Z1gRA/7Hz6r
 okuBUzoQSnu+M9tXXYyzFeSCHZKxjijSXxUmgAaoz2MKNTAxiL0DbjtxJftGXxfUE8vq
 O7Gt6zu+XW9iaomJX+xOvxjKe+1HyrBa30KO6yH8mfnzVmt8HytX92bqiVNPFnRUVJ3p
 xDm6uIEoNVUAqPnMO7yX94mje5wquzLML5lL1knIyHk4LDoQQ9rz7IxbUNlGDdiBQV8F
 ahNkrtdqEIAPg+l2zK7bpGZaoryUgzHsw6HmQpRl424z/Yn0ecaY0iy2n1HXS8jaPS0F
 IzGQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUglwL5Lhx7KTeBk3jLobdjnuYg7IaklhYftHR+ijHfenML+nmU5tUkiTAoxAV8RiHBuusE1ylq3O4=@lists.freedesktop.org
X-Gm-Message-State: AOJu0Ywoh4Tma8Ft4cW3wUIHJ6xTzys4aJ/1pO1FRo+5xd+Qy9Wf90B8
 egoLtr49XAxFcHwcMdBI9LaB1yEI5fe31QO9ySyys9UhvJjWZyXOMk7LHxrEr3hFaA2SRFy7NgZ
 jku0XinsK4fYz1yzIDzoxfkni/OVg6sivbKxnnUGg/8HpnY8S0PPbGtdDBDokRCoRwg==
X-Gm-Gg: ATEYQzwVzJlciiHNIeVwn7Y//wM+kmYudp2yFeJ6cpAinljaYtAvvm4+oMFboBKvb9p
 dKXumI0oF48y9OiplpYzbDnCdfqCtl3vxcNWTRbcwTqZEIdqoH+zODwoHftcIdqOVvCYMu5IvcY
 iswMv1wI4aPCIXZ7/UbLTvg+y9kkYoSN+ymsxJ+ckymi35aGWzwFACmNlqBFXGlsshxvpbi7rf3
 UGeehgyuUOB/qDFjeWVRxpqPZVVz18lzAMYIXMxEZgbkAUr9rVHOM6MGkZvAvml9xAWp1N5wgxQ
 ipCWwR8YCx1rpRLGXMgmGzq1LdAFvTPw1BmfbNY9DpE0vMcmAYCBKdcHW3Q8X366PHF+sCGQpwQ
 UYQWWte/aQZOaLlM7ttLJasOOxehSvtq2
X-Received: by 2002:a05:6214:4387:b0:894:663f:cb4b with SMTP id
 6a1803df08f44-89979e31f4amr253354886d6.7.1772063080176; 
 Wed, 25 Feb 2026 15:44:40 -0800 (PST)
X-Received: by 2002:a05:6214:4387:b0:894:663f:cb4b with SMTP id
 6a1803df08f44-89979e31f4amr253353936d6.7.1772063079588; 
 Wed, 25 Feb 2026 15:44:39 -0800 (PST)
Received: from [127.0.1.1] ([216.158.158.246])
 by smtp.gmail.com with ESMTPSA id
 6a1803df08f44-899c738d80bsm3357606d6.41.2026.02.25.15.44.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Feb 2026 15:44:39 -0800 (PST)
From: Tal Zussman <tz2294@columbia.edu>
Subject: [PATCH v2 0/4] mm: Remove stray references to pagevec
Date: Wed, 25 Feb 2026 18:44:24 -0500
Message-Id: <20260225-pagevec_cleanup-v2-0-716868cc2d11@columbia.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFiJn2kC/3WNQQ6CMBBFr0JmbQ0dsBpX3sMQU9oBJkFoWttoS
 O9uZe/yveS/v0EgzxTgWm3gKXHgdSmAhwrMpJeRBNvCgDWqGvEknB4pkXmYmfQSnbDt2Uhl+np
 AC2XlPA383ov3rvDE4bX6z36Q5M/+byUppGguhNiqRjUWb2ad47NnfSQbocs5fwEZhc9ksQAAA
 A==
X-Change-ID: 20260225-pagevec_cleanup-d47c16cb0f2d
To: David Howells <dhowells@redhat.com>,
 Marc Dionne <marc.dionne@auristor.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>,
 Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>,
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>,
 Chris Li <chrisl@kernel.org>, Kairui Song <kasong@tencent.com>,
 Kemeng Shi <shikemeng@huaweicloud.com>, Nhat Pham <nphamcs@gmail.com>,
 Baoquan He <bhe@redhat.com>, Barry Song <baohua@kernel.org>,
 Matthew Wilcox <willy@infradead.org>,
 Dan Williams <dan.j.williams@intel.com>, Jan Kara <jack@suse.cz>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, Theodore Ts'o <tytso@mit.edu>
Cc: Andreas Dilger <adilger.kernel@dilger.ca>,
 Paulo Alcantara <pc@manguebit.org>,
 Trond Myklebust <trondmy@kernel.org>, Anna Schumaker <anna@kernel.org>,
 Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>,
 Joseph Qi <joseph.qi@linux.alibaba.com>, Steve French <sfrench@samba.org>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 Shyam Prasad N <sprasad@microsoft.com>, Tom Talpey <tom@talpey.com>,
 Bharath SM <bharathsm@microsoft.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Jani Nikula <jani.nikula@linux.intel.com>,
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, Ilya Dryomov <idryomov@gmail.com>,
 Alex Markuze <amarkuze@redhat.com>, Viacheslav Dubeyko <slava@dubeyko.com>,
 Andreas Gruenbacher <agruenba@redhat.com>,
 Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 "Darrick J. Wong" <djwong@kernel.org>,
 Chuck Lever <chuck.lever@oracle.com>, Jeff Layton <jlayton@kernel.org>,
 NeilBrown <neil@brown.name>, Olga Kornievskaia <okorniev@redhat.com>,
 Dai Ngo <Dai.Ngo@oracle.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 John Hubbard <jhubbard@nvidia.com>, Peter Xu <peterx@redhat.com>,
 Johannes Weiner <hannes@cmpxchg.org>,
 Roman Gushchin <roman.gushchin@linux.dev>,
 Shakeel Butt <shakeel.butt@linux.dev>, Jann Horn <jannh@google.com>,
 Pedro Falcato <pfalcato@suse.de>,
 Brendan Jackman <jackmanb@google.com>, Zi Yan <ziy@nvidia.com>,
 Hugh Dickins <hughd@google.com>,
 Baolin Wang <baolin.wang@linux.alibaba.com>,
 Axel Rasmussen <axelrasmussen@google.com>,
 Yuanchu Xie <yuanchu@google.com>, Wei Xu <weixugc@google.com>,
 Qi Zheng <zhengqi.arch@bytedance.com>, linux-afs@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-mm@kvack.org, linux-fsdevel@vger.kernel.org,
 nvdimm@lists.linux.dev, linux-ext4@vger.kernel.org,
 netfs@lists.linux.dev, linux-nfs@vger.kernel.org,
 ocfs2-devel@lists.linux.dev, linux-cifs@vger.kernel.org,
 samba-technical@lists.samba.org, dri-devel@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org, linux-btrfs@vger.kernel.org,
 ceph-devel@vger.kernel.org, gfs2@lists.linux.dev,
 linux-nilfs@vger.kernel.org, linux-xfs@vger.kernel.org,
 cgroups@vger.kernel.org, Tal Zussman <tz2294@columbia.edu>
X-Mailer: b4 0.14.3-dev-d7477
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772063077; l=3877;
 i=tz2294@columbia.edu; s=20250528; h=from:subject:message-id;
 bh=RPYa8SOtCEMGYvfhLiG7oMZP0LUGjYMFBvMU/E6aYSQ=;
 b=N/1edh2L6XTHkwD9ieSfOXn9kYa5DYTkRpLgb6W+Pjo3fqU/OShuTpJ0EUyLfSHC66PI9wcY+
 BU8+4Nx0zdtBWryBzWRqlHj5gGJzMg+bWxBXZztU9BaHETUf5RWJ+Bm
X-Developer-Key: i=tz2294@columbia.edu; a=ed25519;
 pk=BIj5KdACscEOyAC0oIkeZqLB3L94fzBnDccEooxeM5Y=
X-Authority-Analysis: v=2.4 cv=ZbYQ98VA c=1 sm=1 tr=0 ts=699f8968 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=mD05b5UW6KhLIDvowZ5dSQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Da8U98TiO7q1upZEImrf:22 a=HpS3TJQ9O3Ob1ozEcmik:22
 a=VwQbUJbxAAAA:8 a=C2eTfLYCeeefI48a-yAA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: QoUsdwu9KDBg754O7jiN3RFme2JQtRCk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDIyNyBTYWx0ZWRfX+cZ8tpZw8Jsq
 6+tArWVX9YtcU1RMpcj7trRGyyk1n0zxsOV5P9C3HglqRK4GFC0IR9yBr1NkNUDJ/3/dQ4JUl67
 48XsT8F12wIREuaX+bAmL+ZqKHnOsRUDF9CeZTPcVRZP7nehXoQ2BckWukPV2o/OoSmfz9hmmEu
 HKOqno/dRKP/xo1sifze/nW90XV7VLoI5Ps4w5gYOiN+1O2XHNziuRzY8K4xfCpQ1JiPUBEdZ03
 D8mlXAl48qTEpdAVpJQ2wp9yl3cLBgV/kO8E9coy14wCGrYc5aNh+fbcuEe174nzi+IaNxa978l
 R2MCgxAWfvgZJjU+to4efbXZVw5mx5gP1/a2INFKrFQ5MwZDTLb6cruJQPeZ+3bxpoJCONRXXaI
 coEHyrxNGXwxgVvvMeG8fXvKUvKkS4TG0G/UsDTyh9k/I+gaNZHxRPdZyZrd4AKPOGG3Lz1F3gf
 O/n+jw+rT9nQrIA4OEQ==
X-Proofpoint-ORIG-GUID: QoUsdwu9KDBg754O7jiN3RFme2JQtRCk
X-Proofpoint-Virus-Version: vendor=nai engine=6800 definitions=11712
 signatures=596818
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 malwarescore=0 suspectscore=0 impostorscore=10
 priorityscore=1501 phishscore=0 spamscore=0 bulkscore=10 adultscore=0
 lowpriorityscore=10 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2602250227
X-Mailman-Approved-At: Fri, 27 Feb 2026 13:41:00 +0000
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
X-Spamd-Result: default: False [1.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DATE_IN_PAST(1.00)[37];
	DMARC_POLICY_ALLOW(-0.50)[columbia.edu,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[columbia.edu:s=pps01];
	MAILLIST(-0.20)[mailman];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[tz2294@columbia.edu,intel-gfx-bounces@lists.freedesktop.org];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_TO(0.00)[redhat.com,auristor.com,kernel.org,linux-foundation.org,oracle.com,google.com,suse.com,tencent.com,huaweicloud.com,gmail.com,infradead.org,intel.com,suse.cz,zeniv.linux.org.uk,mit.edu];
	FORGED_RECIPIENTS(0.00)[m:dhowells@redhat.com,m:marc.dionne@auristor.com,m:jaegeuk@kernel.org,m:chao@kernel.org,m:akpm@linux-foundation.org,m:david@kernel.org,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:vbabka@kernel.org,m:rppt@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:chrisl@kernel.org,m:kasong@tencent.com,m:shikemeng@huaweicloud.com,m:nphamcs@gmail.com,m:bhe@redhat.com,m:baohua@kernel.org,m:willy@infradead.org,m:dan.j.williams@intel.com,m:jack@suse.cz,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:tytso@mit.edu,m:adilger.kernel@dilger.ca,m:pc@manguebit.org,m:trondmy@kernel.org,m:anna@kernel.org,m:mark@fasheh.com,m:jlbec@evilplan.org,m:joseph.qi@linux.alibaba.com,m:sfrench@samba.org,m:ronniesahlberg@gmail.com,m:sprasad@microsoft.com,m:tom@talpey.com,m:bharathsm@microsoft.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:rod
 rigo.vivi@intel.com,m:tursulin@ursulin.net,m:clm@fb.com,m:dsterba@suse.com,m:idryomov@gmail.com,m:amarkuze@redhat.com,m:slava@dubeyko.com,m:agruenba@redhat.com,m:muchun.song@linux.dev,m:osalvador@suse.de,m:konishi.ryusuke@gmail.com,m:djwong@kernel.org,m:chuck.lever@oracle.com,m:jlayton@kernel.org,m:neil@brown.name,m:okorniev@redhat.com,m:Dai.Ngo@oracle.com,m:jgg@ziepe.ca,m:jhubbard@nvidia.com,m:peterx@redhat.com,m:hannes@cmpxchg.org,m:roman.gushchin@linux.dev,m:shakeel.butt@linux.dev,m:jannh@google.com,m:pfalcato@suse.de,m:jackmanb@google.com,m:ziy@nvidia.com,m:hughd@google.com,m:baolin.wang@linux.alibaba.com,m:axelrasmussen@google.com,m:yuanchu@google.com,m:weixugc@google.com,m:zhengqi.arch@bytedance.com,m:linux-afs@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-f2fs-devel@lists.sourceforge.net,m:linux-mm@kvack.org,m:linux-fsdevel@vger.kernel.org,m:nvdimm@lists.linux.dev,m:linux-ext4@vger.kernel.org,m:netfs@lists.linux.dev,m:linux-nfs@vger.kernel.org,m:ocfs2-devel@lists
 .linux.dev,m:linux-cifs@vger.kernel.org,m:samba-technical@lists.samba.org,m:dri-devel@lists.freedesktop.org,m:linux-btrfs@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:gfs2@lists.linux.dev,m:linux-nilfs@vger.kernel.org,m:linux-xfs@vger.kernel.org,m:cgroups@vger.kernel.org,m:tz2294@columbia.edu,s:lists@lfdr.de];
	ARC_NA(0.00)[];
	FREEMAIL_CC(0.00)[dilger.ca,manguebit.org,kernel.org,fasheh.com,evilplan.org,linux.alibaba.com,samba.org,gmail.com,microsoft.com,talpey.com,linux.intel.com,suse.de,ffwll.ch,intel.com,ursulin.net,fb.com,suse.com,redhat.com,dubeyko.com,linux.dev,oracle.com,brown.name,ziepe.ca,nvidia.com,cmpxchg.org,google.com,bytedance.com,lists.infradead.org,vger.kernel.org,lists.sourceforge.net,kvack.org,lists.linux.dev,lists.samba.org,lists.freedesktop.org,columbia.edu];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	RCPT_COUNT_GT_50(0.00)[97];
	RCVD_COUNT_FIVE(0.00)[6];
	FROM_NEQ_ENVFROM(0.00)[tz2294@columbia.edu,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[columbia.edu:+];
	NEURAL_HAM(-0.00)[-0.959];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 1CD5D1B7CB2
X-Rspamd-Action: no action

struct pagevec was removed in commit 1e0877d58b1e ("mm: remove struct
pagevec"). Remove any stray references to it and rename relevant files
and macros accordingly.

While at it, remove unnecessary #includes of pagevec.h (now
folio_batch.h) in .c files. There are probably more of these that could
be removed in .h files, but those are more complex to verify.

---
Changes in v2:
- Add tags from Matthew, David, and Chris (thanks!).
- Add 3 new patches with more cleanups.
- Link to v1: https://lore.kernel.org/r/20260225-pagevec_cleanup-v1-1-38e2246363d2@columbia.edu

---
Tal Zussman (4):
      mm: Remove stray references to struct pagevec
      fs: Remove unncessary pagevec.h includes
      folio_batch: Rename pagevec.h to folio_batch.h
      folio_batch: Rename PAGEVEC_SIZE to FOLIO_BATCH_SIZE

 MAINTAINERS                                |  1 +
 drivers/gpu/drm/drm_gem.c                  |  2 +-
 drivers/gpu/drm/i915/gem/i915_gem_shmem.c  |  2 +-
 drivers/gpu/drm/i915/gt/intel_gtt.h        |  2 +-
 drivers/gpu/drm/i915/i915_gpu_error.c      |  2 +-
 fs/afs/internal.h                          |  1 -
 fs/afs/write.c                             |  1 -
 fs/btrfs/compression.c                     |  2 +-
 fs/btrfs/extent_io.c                       |  6 +++---
 fs/btrfs/tests/extent-io-tests.c           |  2 +-
 fs/buffer.c                                |  2 +-
 fs/ceph/addr.c                             |  2 +-
 fs/dax.c                                   |  1 -
 fs/ext4/file.c                             |  1 -
 fs/ext4/inode.c                            |  2 +-
 fs/ext4/page-io.c                          |  1 -
 fs/ext4/readpage.c                         |  1 -
 fs/f2fs/checkpoint.c                       |  2 +-
 fs/f2fs/compress.c                         |  2 +-
 fs/f2fs/data.c                             |  2 +-
 fs/f2fs/f2fs.h                             |  2 --
 fs/f2fs/file.c                             |  1 -
 fs/f2fs/node.c                             |  2 +-
 fs/gfs2/aops.c                             |  2 +-
 fs/hugetlbfs/inode.c                       |  2 +-
 fs/mpage.c                                 |  1 -
 fs/netfs/buffered_write.c                  |  1 -
 fs/nfs/blocklayout/blocklayout.c           |  1 -
 fs/nfs/dir.c                               |  1 -
 fs/nilfs2/btree.c                          |  2 +-
 fs/nilfs2/page.c                           |  2 +-
 fs/nilfs2/segment.c                        |  2 +-
 fs/ocfs2/refcounttree.c                    |  1 -
 fs/ramfs/file-nommu.c                      |  2 +-
 fs/smb/client/connect.c                    |  1 -
 fs/smb/client/file.c                       |  1 -
 include/linux/{pagevec.h => folio_batch.h} | 16 ++++++++--------
 include/linux/folio_queue.h                |  8 ++++----
 include/linux/iomap.h                      |  2 +-
 include/linux/sunrpc/svc.h                 |  2 +-
 include/linux/swap.h                       |  2 --
 include/linux/writeback.h                  |  2 +-
 mm/filemap.c                               |  2 +-
 mm/gup.c                                   |  2 +-
 mm/memcontrol.c                            |  2 +-
 mm/mlock.c                                 |  2 +-
 mm/page-writeback.c                        |  2 +-
 mm/page_alloc.c                            |  2 +-
 mm/shmem.c                                 |  6 +++---
 mm/swap.c                                  |  4 ++--
 mm/swap_state.c                            |  4 ++--
 mm/truncate.c                              |  8 ++++----
 mm/vmscan.c                                |  2 +-
 53 files changed, 56 insertions(+), 73 deletions(-)
---
base-commit: 957a3fab8811b455420128ea5f41c51fd23eb6c7
change-id: 20260225-pagevec_cleanup-d47c16cb0f2d

Best regards,
-- 
Tal Zussman <tz2294@columbia.edu>

