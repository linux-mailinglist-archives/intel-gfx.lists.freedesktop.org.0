Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kGStOvSeoWl8ugQAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 14:41:08 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1841B7CA4
	for <lists+intel-gfx@lfdr.de>; Fri, 27 Feb 2026 14:41:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 69E0910EB6A;
	Fri, 27 Feb 2026 13:41:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=kernel.org header.i=@kernel.org header.b="DcjIXeLg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from sea.source.kernel.org (sea.source.kernel.org [172.234.252.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4237510E9D9
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 21:49:01 +0000 (UTC)
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by sea.source.kernel.org (Postfix) with ESMTP id E6AEF4455D
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 21:49:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A105AC2BCAF
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 21:49:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1772142540;
 bh=LF4bwcYv1+PfMspbbpqO2VzfLK8CTRaCpOj6mQJxZGw=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=DcjIXeLgrxqUYwwv+2hZCBu8T09MVdaj4sSw8in+d9ikwiv6jPM/YXPBL00H8vz+L
 ThBlz0nE8Lf5ETYcNtggwxUpTaTtpxvJzo6zuFsbRb8XoqlA9Fh9yjWBh0hxolp6uP
 F4RBlPeM6zLgUqIIeXrHHNM23II286EyJloqnQZQDeWWJH6pSFZ/PCtkdKVacnfQjO
 j39CTWgFGDhh9HZ9An7My+BGm7MDURWMkjqHI10HW8SaosV01xNYbdS9uJSRV+fDJ+
 jhAZOaOllUvBy/kqKwJuum3OskFoy2GeMvvV0xHQSbc+35MVaFPFbyqJ1+b6Gwa1RP
 ewnbRhbSJ1htQ==
Received: by mail-yx1-f49.google.com with SMTP id
 956f58d0204a3-64aea64bf15so1200635d50.2
 for <intel-gfx@lists.freedesktop.org>; Thu, 26 Feb 2026 13:49:00 -0800 (PST)
X-Forwarded-Encrypted: i=1;
 AJvYcCWZ7TO5RB70fY0MPGxhALBzsQTBUfvtuANOXYTY10D1sfk8+NuNce7z02A3AIcq7oPFJTEXgHARgNw=@lists.freedesktop.org
X-Gm-Message-State: AOJu0YzkSNs24xwKNdeLqELEbOdnAs1T4dS23Qlwn/BUReuo4O2jAwzF
 LiRCdnpWurmN7lOuXCZoAac5ORvGXrfROLCqeR8Jv00FxB7ZkhXqNalF3AqdKT3yc1EFbj+mTIo
 bOSW9QgwFHLMy/F4Jpm24kVJG77jFUJiomfv5+89LjQ==
X-Received: by 2002:a53:e8c9:0:b0:64c:a81e:f2b2 with SMTP id
 956f58d0204a3-64cc211f150mr699646d50.27.1772142538704; Thu, 26 Feb 2026
 13:48:58 -0800 (PST)
MIME-Version: 1.0
References: <20260225-pagevec_cleanup-v2-0-716868cc2d11@columbia.edu>
 <20260225-pagevec_cleanup-v2-2-716868cc2d11@columbia.edu>
In-Reply-To: <20260225-pagevec_cleanup-v2-2-716868cc2d11@columbia.edu>
From: Chris Li <chrisl@kernel.org>
Date: Thu, 26 Feb 2026 13:48:47 -0800
X-Gmail-Original-Message-ID: <CACePvbX5Qm+kQLtCWynvO-2YtoW0mdR+V6rfq=buR6tfR1A9FQ@mail.gmail.com>
X-Gm-Features: AaiRm50fP40RQkljlPLX-PI1NSM3iQnOuQQEi7r5tKbV7kaWVe_vUmPk2uGLYLk
Message-ID: <CACePvbX5Qm+kQLtCWynvO-2YtoW0mdR+V6rfq=buR6tfR1A9FQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/4] fs: Remove unncessary pagevec.h includes
To: Tal Zussman <tz2294@columbia.edu>
Cc: David Howells <dhowells@redhat.com>, Marc Dionne <marc.dionne@auristor.com>,
 Jaegeuk Kim <jaegeuk@kernel.org>, Chao Yu <chao@kernel.org>, 
 Andrew Morton <akpm@linux-foundation.org>, David Hildenbrand <david@kernel.org>,
 Lorenzo Stoakes <lorenzo.stoakes@oracle.com>,
 "Liam R. Howlett" <Liam.Howlett@oracle.com>, 
 Vlastimil Babka <vbabka@kernel.org>, Mike Rapoport <rppt@kernel.org>, 
 Suren Baghdasaryan <surenb@google.com>, Michal Hocko <mhocko@suse.com>,
 Kairui Song <kasong@tencent.com>, 
 Kemeng Shi <shikemeng@huaweicloud.com>, Nhat Pham <nphamcs@gmail.com>, 
 Baoquan He <bhe@redhat.com>, Barry Song <baohua@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, 
 Dan Williams <dan.j.williams@intel.com>, Jan Kara <jack@suse.cz>, 
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, 
 "Theodore Ts'o" <tytso@mit.edu>, Andreas Dilger <adilger.kernel@dilger.ca>, 
 Paulo Alcantara <pc@manguebit.org>, Trond Myklebust <trondmy@kernel.org>,
 Anna Schumaker <anna@kernel.org>, 
 Mark Fasheh <mark@fasheh.com>, Joel Becker <jlbec@evilplan.org>, 
 Joseph Qi <joseph.qi@linux.alibaba.com>, Steve French <sfrench@samba.org>, 
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 Shyam Prasad N <sprasad@microsoft.com>, 
 Tom Talpey <tom@talpey.com>, Bharath SM <bharathsm@microsoft.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>,
 Simona Vetter <simona@ffwll.ch>, 
 Jani Nikula <jani.nikula@linux.intel.com>, 
 Joonas Lahtinen <joonas.lahtinen@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>, 
 Tvrtko Ursulin <tursulin@ursulin.net>, Chris Mason <clm@fb.com>,
 David Sterba <dsterba@suse.com>, 
 Ilya Dryomov <idryomov@gmail.com>, Alex Markuze <amarkuze@redhat.com>, 
 Viacheslav Dubeyko <slava@dubeyko.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, 
 Muchun Song <muchun.song@linux.dev>, Oscar Salvador <osalvador@suse.de>, 
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 "Darrick J. Wong" <djwong@kernel.org>, 
 Chuck Lever <chuck.lever@oracle.com>, Jeff Layton <jlayton@kernel.org>,
 NeilBrown <neil@brown.name>, 
 Olga Kornievskaia <okorniev@redhat.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Jason Gunthorpe <jgg@ziepe.ca>, 
 John Hubbard <jhubbard@nvidia.com>, Peter Xu <peterx@redhat.com>, 
 Johannes Weiner <hannes@cmpxchg.org>, Roman Gushchin <roman.gushchin@linux.dev>,
 Shakeel Butt <shakeel.butt@linux.dev>, Jann Horn <jannh@google.com>, 
 Pedro Falcato <pfalcato@suse.de>, Brendan Jackman <jackmanb@google.com>,
 Zi Yan <ziy@nvidia.com>, 
 Hugh Dickins <hughd@google.com>, Baolin Wang <baolin.wang@linux.alibaba.com>, 
 Axel Rasmussen <axelrasmussen@google.com>, Yuanchu Xie <yuanchu@google.com>, 
 Wei Xu <weixugc@google.com>, Qi Zheng <zhengqi.arch@bytedance.com>, 
 linux-afs@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-f2fs-devel@lists.sourceforge.net, linux-mm@kvack.org, 
 linux-fsdevel@vger.kernel.org, nvdimm@lists.linux.dev, 
 linux-ext4@vger.kernel.org, netfs@lists.linux.dev, linux-nfs@vger.kernel.org, 
 ocfs2-devel@lists.linux.dev, linux-cifs@vger.kernel.org, 
 samba-technical@lists.samba.org, dri-devel@lists.freedesktop.org, 
 intel-gfx@lists.freedesktop.org, linux-btrfs@vger.kernel.org, 
 ceph-devel@vger.kernel.org, gfs2@lists.linux.dev, linux-nilfs@vger.kernel.org, 
 linux-xfs@vger.kernel.org, cgroups@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
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
X-Spamd-Result: default: False [0.19 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[redhat.com,auristor.com,kernel.org,linux-foundation.org,oracle.com,google.com,suse.com,tencent.com,huaweicloud.com,gmail.com,infradead.org,intel.com,suse.cz,zeniv.linux.org.uk,mit.edu,dilger.ca,manguebit.org,fasheh.com,evilplan.org,linux.alibaba.com,samba.org,microsoft.com,talpey.com,linux.intel.com,suse.de,ffwll.ch,ursulin.net,fb.com,dubeyko.com,linux.dev,brown.name,ziepe.ca,nvidia.com,cmpxchg.org,bytedance.com,lists.infradead.org,vger.kernel.org,lists.sourceforge.net,kvack.org,lists.linux.dev,lists.samba.org,lists.freedesktop.org];
	FORGED_RECIPIENTS(0.00)[m:tz2294@columbia.edu,m:dhowells@redhat.com,m:marc.dionne@auristor.com,m:jaegeuk@kernel.org,m:chao@kernel.org,m:akpm@linux-foundation.org,m:david@kernel.org,m:lorenzo.stoakes@oracle.com,m:Liam.Howlett@oracle.com,m:vbabka@kernel.org,m:rppt@kernel.org,m:surenb@google.com,m:mhocko@suse.com,m:kasong@tencent.com,m:shikemeng@huaweicloud.com,m:nphamcs@gmail.com,m:bhe@redhat.com,m:baohua@kernel.org,m:willy@infradead.org,m:dan.j.williams@intel.com,m:jack@suse.cz,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:tytso@mit.edu,m:adilger.kernel@dilger.ca,m:pc@manguebit.org,m:trondmy@kernel.org,m:anna@kernel.org,m:mark@fasheh.com,m:jlbec@evilplan.org,m:joseph.qi@linux.alibaba.com,m:sfrench@samba.org,m:ronniesahlberg@gmail.com,m:sprasad@microsoft.com,m:tom@talpey.com,m:bharathsm@microsoft.com,m:maarten.lankhorst@linux.intel.com,m:mripard@kernel.org,m:tzimmermann@suse.de,m:airlied@gmail.com,m:simona@ffwll.ch,m:jani.nikula@linux.intel.com,m:joonas.lahtinen@linux.intel.com,m:r
 odrigo.vivi@intel.com,m:tursulin@ursulin.net,m:clm@fb.com,m:dsterba@suse.com,m:idryomov@gmail.com,m:amarkuze@redhat.com,m:slava@dubeyko.com,m:agruenba@redhat.com,m:muchun.song@linux.dev,m:osalvador@suse.de,m:konishi.ryusuke@gmail.com,m:djwong@kernel.org,m:chuck.lever@oracle.com,m:jlayton@kernel.org,m:neil@brown.name,m:okorniev@redhat.com,m:Dai.Ngo@oracle.com,m:jgg@ziepe.ca,m:jhubbard@nvidia.com,m:peterx@redhat.com,m:hannes@cmpxchg.org,m:roman.gushchin@linux.dev,m:shakeel.butt@linux.dev,m:jannh@google.com,m:pfalcato@suse.de,m:jackmanb@google.com,m:ziy@nvidia.com,m:hughd@google.com,m:baolin.wang@linux.alibaba.com,m:axelrasmussen@google.com,m:yuanchu@google.com,m:weixugc@google.com,m:zhengqi.arch@bytedance.com,m:linux-afs@lists.infradead.org,m:linux-kernel@vger.kernel.org,m:linux-f2fs-devel@lists.sourceforge.net,m:linux-mm@kvack.org,m:linux-fsdevel@vger.kernel.org,m:nvdimm@lists.linux.dev,m:linux-ext4@vger.kernel.org,m:netfs@lists.linux.dev,m:linux-nfs@vger.kernel.org,m:ocfs2-devel@lis
 ts.linux.dev,m:linux-cifs@vger.kernel.org,m:samba-technical@lists.samba.org,m:dri-devel@lists.freedesktop.org,m:linux-btrfs@vger.kernel.org,m:ceph-devel@vger.kernel.org,m:gfs2@lists.linux.dev,m:linux-nilfs@vger.kernel.org,m:linux-xfs@vger.kernel.org,m:cgroups@vger.kernel.org,s:lists@lfdr.de];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER(0.00)[chrisl@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[intel-gfx@lists.freedesktop.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PREVIOUSLY_DELIVERED(0.00)[intel-gfx@lists.freedesktop.org];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chrisl@kernel.org,intel-gfx-bounces@lists.freedesktop.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_GT_50(0.00)[96];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.989];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid]
X-Rspamd-Queue-Id: 6B1841B7CA4
X-Rspamd-Action: no action

On Wed, Feb 25, 2026 at 3:44=E2=80=AFPM Tal Zussman <tz2294@columbia.edu> w=
rote:
>
> Remove unused pagevec.h includes from .c files. These were found with
> the following command:
>
>   grep -rl '#include.*pagevec\.h' --include=3D'*.c' | while read f; do
>         grep -qE 'PAGEVEC_SIZE|folio_batch' "$f" || echo "$f"
>   done
>
> There are probably more removal candidates in .h files, but those are
> more complex to analyze.
>
> Signed-off-by: Tal Zussman <tz2294@columbia.edu>

Acked-by: Chris Li <chrisl@kernel.org>

Chris
